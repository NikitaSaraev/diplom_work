class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :sname
      t.string :fname
      t.string :monkeys_turn

      t.timestamps
    end
  end
end
