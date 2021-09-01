class DashboardsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def show
    @sum_cashback = current_user.current_cashback

    @cashback = Cashback
      .where(user: current_user)
      .last
      # pry
  end

  def home
  end

end
