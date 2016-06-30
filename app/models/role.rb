class Role < ApplicationRecord
  belongs_to :user
  belongs_to :project, dependent: :destroy
end
