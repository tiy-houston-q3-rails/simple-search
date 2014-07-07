class PageController < ApplicationController

  before_action :set_assignments

  def show
    @user = User.first
  end

  def set_assignments
    @assignments = Assignment.active
  end
end
