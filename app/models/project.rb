class Project < ApplicationRecord
  has_many :roles, dependent: :destroy
  has_many :users, through: :roles
  belongs_to :conversation
  has_many :sections, dependent: :destroy
end
