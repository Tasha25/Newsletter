class AddPlaceToEventPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :event_posts, :place, :string
  end
end
