class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :max_count

      t.timestamps
    end
  end
end
