class AddRolesAclevel < ActiveRecord::Migration
  def up
    add_column :roles, :aclevel, :integer, :limit => 2, :default => 0
  end

  def down
    remove_column :roles, :aclevel
  end
end
