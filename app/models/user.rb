class User < ApplicationRecord
  has_many :projects
  has_many :categories
end
