class Client < ApplicationRecord
    has_many :motorcycles
    has_many :addresses, dependent: :destroy
end
