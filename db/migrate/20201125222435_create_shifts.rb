class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :start
      t.time :end
      t.references :employee, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
