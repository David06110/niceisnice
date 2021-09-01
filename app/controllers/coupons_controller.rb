class CouponsController < ApplicationController
  def show
    @coupons = current_user.coupons
  end

  def new
    @new_coupon = Coupon.new
  end

  def create
    @new_coupon = Coupon.new(coupon_params)
    flash.alert = "Vous n'avez pas assez de cashback!"
    render "coupons/new" and return if current_user.current_cashback < @new_coupon.price

    @new_coupon.user = current_user

    code = Digest::MD5.hexdigest("#{current_user.id}x#{current_user.coupons.count + 1}")
    @new_coupon.code = "NINCOUPON-#{code}"
    @new_coupon.save
    redirect_to coupons_path
  end

  private
  def coupon_params
    params.require(:coupon).permit(:price)
  end
end
