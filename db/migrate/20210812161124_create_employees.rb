class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :nationality
      t.date :birth_date
      t.references :department, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
    add_index :employees, :name, unique: true
  end
end
