class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :completed_assignments
  has_many :assignments, through: :completed_assignments

  def completed_assignment_for(assignment)
    completed_assignments.find_by assignment_id: assignment.id
  end

end
