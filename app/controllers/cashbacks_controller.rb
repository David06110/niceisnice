class CashbacksController < ApplicationController
  def new
    @new_cashback = Cashback.new
  end

  def index
    @cashbacks=Cashback.all
  end

  def create
    @new_cashback = Cashback.new(user: current_user)

    @file = params[:cashback][:ticket]
    result = TicketReaderService.new(@file).call

    if result[:status] == :success
      @new_cashback.shop = Shop.find_by(siret: result[:siret]) || Shop.find_by(raw_name: result[:name], address: result[:address])
      @new_cashback.amount = result[:cashback_amount]
      @new_cashback.ticket_amount = result[:total_amount]

      redirect_to(root_path, notice: "#{result[:name]} n'est pas un magasin affilié !") and return unless @new_cashback.save

      redirect_to dashboard_path
    else
      redirect_to(root_path, notice: result[:error_message])
    end
  end
end
