class CouponsController < ApplicationController
  def show
    @coupons = current_user.coupons.order(created_at: :desc)
  end

  def new
    @new_coupon = Coupon.new
  end

  def create
    @new_coupon = Coupon.new(coupon_params)
    if current_user.current_cashback < @new_coupon.price
      flash.alert = "Vous n'avez pas assez de cashback!"
      render "coupons/new" 
      return
    end

    @new_coupon.user = current_user

    code = Digest::MD5.hexdigest("#{current_user.id}x#{current_user.coupons.count + 1}")
    @new_coupon.code = "NINCOUPON-#{code}"[0..15].upcase
    @new_coupon.save
    redirect_to coupons_path
  end

  private
  def coupon_params
    params.require(:coupon).permit(:price)
  end
end
