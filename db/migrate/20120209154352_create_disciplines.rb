class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :discipline_dictionary_id
      t.integer :group_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
