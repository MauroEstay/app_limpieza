class Task < ApplicationRecord
  has_many :hometasks
  has_many :users, through: :hometasks
  has_many :homes, through: :hometasks
end
