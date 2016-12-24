class CreateEventPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :event_posts do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.text :description
      t.string :event_contact_number
      t.string :event_contact_email_address
      t.string :event_link

      t.timestamps
    end
  end
end
