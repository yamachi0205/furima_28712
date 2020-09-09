class Item < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Association::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status_id
  belongs_to_active_hash :postage_id
  belongs_to_active_hash :area_id
  belongs_to_active_hash :days_id

  validates  :name, :price, :image, :comment, :category_id, :status_id, :postage_id, :area_id, :days_id, presence: true 

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :postage_id
    validates :area_id
    validates :days_id
  end
end
