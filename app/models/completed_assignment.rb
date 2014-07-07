class CompletedAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment

  validates :user, presence: true
  validates :assignment, presence: true
  validates :github_url, presence: true
  validates :on_time, presence: true

  before_validation on: :create do
    self.on_time = Date.today <= assignment.due_date
  end
end
