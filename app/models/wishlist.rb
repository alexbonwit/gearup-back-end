class Wishlist < ApplicationRecord
    belongs_to :user
    has_one :gear
end
