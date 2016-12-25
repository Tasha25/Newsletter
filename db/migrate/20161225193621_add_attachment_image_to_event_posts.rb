class AddAttachmentImageToEventPosts < ActiveRecord::Migration
  def self.up
    change_table :event_posts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :event_posts, :image
  end
end
