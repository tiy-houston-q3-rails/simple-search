class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.date :assigned
      t.date :due

      t.timestamps
    end
  end
end
