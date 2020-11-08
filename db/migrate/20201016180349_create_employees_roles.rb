class CreateEmployeesRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :employees_roles do |t|
      t.references :role, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
