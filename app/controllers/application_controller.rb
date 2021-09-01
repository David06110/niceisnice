class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :init_scan


  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def init_scan
    @new_cashback = Cashback.new
  end
end
