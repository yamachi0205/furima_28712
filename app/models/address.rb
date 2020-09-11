class Address < ApplicationRecord
  belongs_to :order


  with_options presence: true do
    validates :postal_code, form: { with: /\A\d{3}[-]\d{4}\z/}
    validates :prefecture
    validates :city
    validates :house_number
    validates :phone_number,  form: { with: /\A\d{11}\z/}
  end
end
