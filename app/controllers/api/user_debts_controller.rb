class Api::UserDebtsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    debts = find_user_debts
    render json: debts
  end

  private

  def find_user_debts
    UserBalanceDecorator.decorate_collection(current_user.debts)
  end
end