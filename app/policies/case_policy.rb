class CasePolicy < ApplicationPolicy
  def initialize(user, client)
    @user = user
    @case = client
  end

  def edit?
    @user.admin? or ( @case.user.eql? @user )
  end
end
