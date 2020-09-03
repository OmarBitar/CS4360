class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :item
      t.date :due

      t.timestamps
    end
  end
end
