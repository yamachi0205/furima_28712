class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :postage
  belongs_to_active_hash :area
  belongs_to_active_hash :days

  validates :price, :numericality => { :greater_than_or_equal_to => 300 } 
  validates :price, :numericality => { :less_than_or_equal_to => 9999999 }
  with_options presence: true do
    validates :name
    validates :price,          format: { with: /\A[0-9]+\z/ }
    validates :image
    validates :comment
    validates :category_id
    validates :status_id
    validates :postage_id
    validates :area_id
    validates :days_id
  end
  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :postage_id
    validates :area_id
    validates :days_id
  end
end
