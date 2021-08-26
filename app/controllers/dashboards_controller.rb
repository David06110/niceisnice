class DashboardsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def show
    @sum_cashback = Cashback
      .where(user: current_user)
      .pluck(:amount)
      .sum    
  
    @cashback = Cashback
      .where(user: current_user)
      .last
      
  end

  def home
  end
end
