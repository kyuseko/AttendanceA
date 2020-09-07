class User < ApplicationRecord
  before_save { self.email = email.downcase }  # 小文字に変換 salfはユーザーオブジェクト


  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i   # メールアドレスのフォーマットを検証できる
  validates :email, presence: true, length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX }
                    uniqueness: true                         # 一意性の検証 他に同じデータがない
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }                
end