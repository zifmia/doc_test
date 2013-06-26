class AddAttachmentPageToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :page
    end
  end

  def self.down
    drop_attached_file :documents, :page
  end
end
