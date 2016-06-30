class Section < ApplicationRecord
  belongs_to :project
  belongs_to :user

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", small: "100x100>", thumb: "60x60#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end