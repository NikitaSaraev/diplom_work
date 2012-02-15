class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :interview_id
      t.integer :teacher_id
      t.string :ip

      t.timestamps
    end
  end
end
