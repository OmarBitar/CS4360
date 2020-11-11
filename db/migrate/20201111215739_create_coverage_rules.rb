class CreateCoverageRules < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_rules do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
