class User < ApplicationRecord
  has_attached_file :image, styles: { thumb: "250x250>"}, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :first_name, presence: true
end
