class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :selfautf
      t.integer :group_id

      t.timestamps
    end
  end
end
