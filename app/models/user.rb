class User < ApplicationRecord
  has_secure_password 
  validates :email           , presence: true
  validates :password_digest , presence: true
  validates :last_name       , presence: true
  validates :first_name      , presence: true
  validates :phone_num       , numericality: { only_integer: true }, length: { in: 10..11 }

  has_many :clients, dependent: :destroy
  has_many :projects, dependent: :destroy


end
