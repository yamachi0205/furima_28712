require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe ' ユーザー新規登録' do
    it 'family_nameが空だと登録できない' do
      @user.family_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Family name can't be blank")
    end
    it 'family_name_readingが空だと登録できない' do
      @user.family_name_reading = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Family name reading can't be blank")
    end
    it 'first_nameが空だと登録できない' do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end
    it 'first_name_readingが空だと登録できない' do
      @user.first_name_reading = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name reading can't be blank")
    end
    it 'nicknameが空だと登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'passwordが空だと登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it 'passwordは６文字以上であれば登録できる' do
      # binding.pry
      @user.password = "aa3456"
      @user.password_confirmation = "aa3456"
      expect(@user).to be_valid
    end
    it 'passwordは５文字以下では登録できない' do
      @user.password = "aa345"
      @user.password_confirmation = "aa345"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it 'password_confirmationがpasswordと一致しないと登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'birthdayが空だと登録できない' do
      @user.birthday = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end
    it 'emailが空だと登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it '重複したemailは存在できない' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end
    it 'emailには@を含まなけれ登録できない' do
      @user.email = 'yamada@example.com'
      expect(@user).to be_valid
    end
    it 'emailは@を含まなければ登録できない' do
      @user.email = 'yamada.example.com'
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end
  end
end
