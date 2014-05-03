class AddUsersAclevel < ActiveRecord::Migration
  def up
    add_column :users, :aclevel, :integer, :limit => 2, :default => 0
  end

  def down
    remove_column :users, :aclevel
  end
end
