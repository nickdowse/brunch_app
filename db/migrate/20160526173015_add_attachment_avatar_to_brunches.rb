class AddAttachmentAvatarToBrunches < ActiveRecord::Migration
  def self.up
    change_table :brunches do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :brunches, :avatar
  end
end
