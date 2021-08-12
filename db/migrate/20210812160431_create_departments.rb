class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.integer :employees_count

      t.timestamps
    end
    add_index :departments, :name, unique: true
  end
end
