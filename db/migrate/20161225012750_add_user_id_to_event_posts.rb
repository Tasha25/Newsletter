class AddUserIdToEventPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :event_posts, :user_id, :integer
  end
end
