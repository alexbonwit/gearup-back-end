class Gear < ApplicationRecord
    has_many :collections
    has_many :wishlists
end
