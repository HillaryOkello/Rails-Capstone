class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 30 }
  validates :hours, presence: true
  validates :category, presence: true

  default_scope { order(created_at: :desc) }
end
