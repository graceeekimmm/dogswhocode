class AddAttachmentDocumentToDogs < ActiveRecord::Migration
  def self.up
    change_table :dogs do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :dogs, :document
  end
end
