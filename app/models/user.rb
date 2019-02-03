class User < ApplicationRecord

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  has_many :images
  has_one :payment
  accepts_nested_attributes_for :payment

end
