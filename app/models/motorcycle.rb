class Motorcycle < ApplicationRecord
  belongs_to :client
  has_one_attached :motorcycle_picture
end
