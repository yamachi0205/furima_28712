class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VILID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  with_options presence: true do
    validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :family_name_reading, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_name_reading, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :nickname
    validates :password, format: { with: VILID_PASSWORD_REGEX}
    validates :birthday
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
  end
end
