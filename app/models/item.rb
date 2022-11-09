class Item < ApplicationRecord
    validates :item, presence: true
    validates :link, presence: true
    validates :cost, presence: true
end
