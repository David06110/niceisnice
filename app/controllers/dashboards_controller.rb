class DashboardsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def show
    @cashbacks = Cashback.where(user_id: current_user)
    @sum_cashback = 0
    @cashbacks.each { |cb| @sum_cashback = @sum_cashback + cb.amount.round(2)}
    end
  end

  def home
  end
end
