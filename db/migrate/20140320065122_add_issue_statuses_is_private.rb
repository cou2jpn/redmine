class AddIssueStatusesIsPrivate < ActiveRecord::Migration
  def up
    add_column :issue_statuses, :is_private, :boolean, :default => false, :null => false
  end

  def down
    remove_column :issue_statuses, :is_private
  end
end
