class Search
  include ActiveModel::Model

  attr_accessor :assignment_id, :name

  def search

    rows = CompletedAssignment.all

    if assignment_id.present?
      rows = rows.where(assignment_id: assignment_id)
    end



    if name.present?
      # searching by name, but need the id

      # uses 2 queries
      # user_ids = User.where("name ILIKE ?", "%#{name}%").pluck(:id)
      # rows = rows.where(user_id: user_ids)

      # uses 1 query
      rows = rows.includes(:assignment).joins(:user).where("users.name ILIKE ?", "%#{name}%")

    end

    rows

  end
end
