class PageController < ApplicationController

  before_action :set_assignments
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def set_assignments
    @assignments = Assignment.active
  end
end
