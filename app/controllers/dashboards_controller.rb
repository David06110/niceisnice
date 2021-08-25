class DashboardsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def show
    @sum_cashback = Cashback
      .where(user: current_user)
      .pluck(:amount)
      .sum    
  end

  def home
  end
end
