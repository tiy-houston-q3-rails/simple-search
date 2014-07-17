class Assignment < ActiveRecord::Base

  has_many :completed_assignments
  has_many :users, through: :completed_assignments

  include PgSearch
  multisearchable against: [:title, :description]

  def self.active
    where("assigned <= ?", Date.today)
  end


end
