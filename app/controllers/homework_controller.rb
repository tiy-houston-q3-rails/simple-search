class HomeworkController < ApplicationController

  def create
    @completed_assignment = CompletedAssignment.new(completed_assignment_params)
    if @completed_assignment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def completed_assignment_params
      params.require(:completed_assignment).permit(:user_id, :assignment_id, :github_url)
    end

end
