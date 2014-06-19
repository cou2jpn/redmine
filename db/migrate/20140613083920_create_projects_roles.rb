class CreateProjectsRoles < ActiveRecord::Migration
  def self.up
    create_table :projects_roles, :id => false do |t|
      t.column :project_id, :integer, :default => 0, :null => false
      t.column :role_id, :integer, :default => 0, :null => false
    end
    add_index :projects_roles, :project_id, :name => :projects_roles_project_id
    add_index :projects_roles, [:project_id, :role_id], :name => :projects_roles_unique, :unique => true

    role_ids = Role.all.collect(&:id)
    Project.all.each do |project|
      project.role_ids = role_ids
    end
  end

  def self.down
    drop_table :projects_roles
  end
end
