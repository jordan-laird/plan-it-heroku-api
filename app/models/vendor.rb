class Vendor < ApplicationRecord
    has_many :quotes
    has_many :customers, through: :quotes
    has_many :vendor_pictures
end
