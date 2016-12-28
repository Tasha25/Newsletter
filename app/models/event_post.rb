class EventPost < ApplicationRecord
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>"}
  has_attached_file :image, :default_url => "original/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
