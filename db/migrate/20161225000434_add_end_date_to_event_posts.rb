class AddEndDateToEventPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :event_posts, :end_date, :string
  end
end
