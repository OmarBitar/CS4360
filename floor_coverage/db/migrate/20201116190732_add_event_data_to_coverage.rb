class AddEventDataToCoverage < ActiveRecord::Migration[6.0]
  def change
    add_column :coverage, :title, :string
    add_column :coverage, :allDay, :boolean
    add_column :coverage, :coverage_rules, :string
  end
end
