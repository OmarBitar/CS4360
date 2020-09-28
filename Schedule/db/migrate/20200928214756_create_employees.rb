class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :active
      t.string :availability

      t.timestamps
    end
  end
end
