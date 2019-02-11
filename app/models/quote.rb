class Quote < ApplicationRecord
    belongs_to :customer
    belongs_to :vendor
end
