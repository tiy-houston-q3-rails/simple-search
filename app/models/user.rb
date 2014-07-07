class User < ActiveRecord::Base

  has_many :completed_assignments
  has_many :assignments, through: :completed_assignments
  
end
