class CreateDisciplineDictionaries < ActiveRecord::Migration
  def change
    create_table :discipline_dictionaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
