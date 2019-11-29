class Hometask < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :home
end
