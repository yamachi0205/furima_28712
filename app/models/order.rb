class Order < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :user
  has_one :address
end
