class AddUsersToTables < ActiveRecord::Migration[6.0]
  def change
    add_reference :coverage, :user, foreign_key: true
    add_reference :employees, :user, foreign_key: true
    add_reference :roles, :user, foreign_key: true
    add_reference :schedules, :user, foreign_key: true
  end
end