# frozen_string_literal: true
class User < ActiveRecord::Base
  has_many :orders
  has_many :user_balances, dependent: :destroy
  has_many :balances_as_payer, class_name: 'UserBalance',
                               inverse_of: :payer,
                               foreign_key: :payer_id
  has_many :submitted_transfers, inverse_of: :from,
                                 class_name: 'Transfer',
                                 foreign_key: :from_id
  has_many :received_transfers, inverse_of: :to,
                                class_name: 'Transfer',
                                foreign_key: :to_id
  belongs_to :company

  after_create :add_first_balance

  scope :by_name, -> { order 'name' }
  scope :admin, -> { where admin: true }

  devise :database_authenticatable,
         :rememberable,
         :trackable,
         :omniauthable,
         omniauth_providers: [:google_oauth2]

  def balances
    balance = Balance.new(self)
    company.users.map do |usr|
      Balance::Wrapper.new(usr, balance.balance_for(usr))
    end
  end

  def add_first_balance
    # TODO(janek): no need to double write here
    user_balances.create balance: 0, payer: self
  end

  def subtract(amount, payer)
    # TODO(janek): double write to new model!
    return if self == payer && !subtract_from_self
    user_balances.create(balance: payer_balance(payer) - amount, payer: payer)
  end

  def to_s
    name
  end

  def payer_balance(payer)
    Balance.new(self).balance_for(payer)
  end

  def total_balance
    Balance.new(self).total
  end

  def debt_to(user)
    Balance.new(self).balance_for(user)
  end

  def total_debt
    Balance.new(self).total
  end

  def pending_transfers_count
    received_transfers.pending.size
  end
end
