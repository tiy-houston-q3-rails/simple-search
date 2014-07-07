class CreateCompletedAssignments < ActiveRecord::Migration
  def change
    create_table :completed_assignments do |t|
      t.references :user, index: true
      t.references :assignment, index: true
      t.boolean :on_time
      t.string :github_url

      t.timestamps
    end
  end
end
