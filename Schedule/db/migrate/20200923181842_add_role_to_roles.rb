class AddRoleToRoles < ActiveRecord::Migration[6.0]
  def change
    add_column :roles, :role, :string
  end
end
