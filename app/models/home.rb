class Home < ApplicationRecord
  has_many :hometasks
  has_many :tasks, through: :hometasks
  has_many :users, through: :hometasks
end
