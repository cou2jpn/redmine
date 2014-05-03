class AddProjectsAclevel < ActiveRecord::Migration
  def up
    add_column :projects, :aclevel, :integer, :limit => 2, :default => 1
  end

  def down
    remove_column :projects, :aclevel
  end
end
