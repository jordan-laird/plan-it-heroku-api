class Customer < ApplicationRecord
    has_many :quotes
    has_many :vendors, through: :quotes
end
