class Category < ApplicationRecord
  has_many :projects
  default_scope { order(created_at: :desc) }

  validates :name, presence: true
  validates :icon, presence: true
end
