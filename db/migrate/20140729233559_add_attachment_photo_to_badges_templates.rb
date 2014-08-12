class AddAttachmentPhotoToBadgesTemplates < ActiveRecord::Migration
  def self.up
    change_table :badges_templates do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :badges_templates, :photo
  end
end
