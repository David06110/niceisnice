class DashboardsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def show
    @sum_cashback = current_user.current_cashback

    @cashback = Cashback
      .where(user: current_user)
      .last
  end

  def home
    # @shops = Cashback.shop.all .sort_by!{|item| item[:name]} .sort_by{|shopid| shopid [:shop_id]}
    # @shops = Shop.all
    # @top = Hash.new
    # @top = @shops.each do |shop|
      
    #  [shop.id] = shop.cashbacks.pluck(:amount).sum
    #  binding.pry
    # end
    # binding.pry
    
  end

end
