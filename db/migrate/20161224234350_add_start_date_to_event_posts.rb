class AddStartDateToEventPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :event_posts, :start_date, :string
  end
end
