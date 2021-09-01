class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_attachment :avatar

  has_many :cashbacks
  has_many :coupons
  # has_many :shops through: :cashback

  def total_cashback
    cashbacks.pluck(:amount).sum
  end

  def total_coupon
    coupons.pluck(:price).sum
  end

  def current_cashback
    total_cashback - total_coupon
  end
end
