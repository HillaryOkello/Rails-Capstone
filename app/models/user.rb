class User < ApplicationRecord
  has_one :session
  has_many :projects
  has_many :categories
end
