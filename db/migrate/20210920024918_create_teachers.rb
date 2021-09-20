class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.integer :nine_hundered

      t.timestamps
    end
  end
end
