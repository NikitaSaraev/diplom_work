class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :report_id
      t.integer :question_id
      t.integer :value

      t.timestamps
    end
  end
end
