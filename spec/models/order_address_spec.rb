require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
 
  before do
    @order_address = FactoryBot.build(:order_address)
  end
  describe '商品購入' do
    it 'postal_codeが空だと購入できない' do
      @order_address.postal_code = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Postal code can't be blank")
    end

    it 'postal_codeに - が必要である'do
      @order_address.postal_code = '123456789'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Postal code is invalid")
      # binding.pry
    end

    it 'area_idが---だと購入できない' do
      @order_address.area_id = 1
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Area must be other than 1")
    end
    it 'cityが空だと購入できない' do
      @order_address.city = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("City can't be blank")

    end
    it 'house_numberが空だと購入できない' do
      @order_address.house_number = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("House number can't be blank")

    end
    it 'phone_numberが空だと購入できない' do
      @order_address.phone_number = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Phone number can't be blank")
    end
    
  end
end
