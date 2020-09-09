require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    it 'nameが空だと登録できない' do
      @item.name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it 'priceが空だと登録できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
    it 'priceは300以下は登録できない' do
      @item.price = 299
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
    end
    it 'priceは9999999以上は登録できない' do
      @item.price = 10000000
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
    end
    it 'priceは半角数字のみでしか登録できない' do
      @item.price = 'a1111'
      @item.valid?
      expect(@item.errors.full_messages).to include("Price is not a number")
    end
    it 'category_idが空だと登録できない' do
      @item.category_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end
    it 'imageが空だと登録できない' do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
    it 'commentが空だと登録できない' do
      @item.comment = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Comment can't be blank")
    end
    it 'status_idが空だと登録できない' do
      @item.status_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Status can't be blank")
    end
    it 'postage_idが空だと登録できない' do
      @item.postage_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Postage can't be blank")
    end
    it 'area_idが空だと登録できない' do
      @item.area_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Area can't be blank")
    end
    it 'days_idが空だと登録できない' do
      @item.days_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Days can't be blank")
    end
    it '' do
      
    end
    it '' do
      
    end
    it '' do
      
    end
    it '' do
      
    end
    it '' do
      
    end
    it '' do
      
    end
  end
end
