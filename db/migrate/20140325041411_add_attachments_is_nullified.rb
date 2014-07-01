class AddAttachmentsIsNullified < ActiveRecord::Migration
  def up
    add_column :attachments, :is_nullified, :boolean, :default => false, :null => false
  end

  def down
    remove_column :attachments, :is_nullified
  end
end
