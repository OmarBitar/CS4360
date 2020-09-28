class CreateCoverageRules < ActiveRecord::Migration[6.0]
  def change
    create_table :coverage_rules do |t|

      t.timestamps
    end
  end
end
