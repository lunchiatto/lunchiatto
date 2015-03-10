class UserBalanceSerializer < ActiveModel::Serializer
  attributes :id, :balance, :created_at, :user, :payer

  def balance
    object.balance.to_s
  end

  def user
    object.user.name
  end

  def payer
    object.payer.name
  end

  delegate :created_at, to: :object
end