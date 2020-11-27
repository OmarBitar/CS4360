class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.date :date
      t.datetime :start
      t.datetime :end
      t.integer :employee
      t.integer :role

      t.timestamps
    end
  end
end
