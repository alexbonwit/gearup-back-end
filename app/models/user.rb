class User < ApplicationRecord
    has_many :collections
    has_many :wishlists
    has_many :gears, through: :collections
    has_many :gears, through: :wishlists
end