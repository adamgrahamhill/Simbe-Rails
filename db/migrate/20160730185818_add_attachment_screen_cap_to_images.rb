class AddAttachmentScreenCapToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :screen_cap
    end
  end

  def self.down
    remove_attachment :images, :screen_cap
  end
end
