class Assignment < ActiveRecord::Base

  has_many :completed_assignments
  has_many :users, through: :completed_assignments

  def self.active
    where("assigned <= ?", Date.today)
  end


end
