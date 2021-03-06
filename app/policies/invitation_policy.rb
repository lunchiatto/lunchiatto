# frozen_string_literal: true
class InvitationPolicy < ApplicationPolicy
  def create?
    user.admin?
  end
  alias_method :destroy?, :create?
  alias_method :index?, :create?
end
