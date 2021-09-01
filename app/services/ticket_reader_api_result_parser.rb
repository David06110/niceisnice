# frozen_string_literal: true

class TicketReaderApiResultParser
  def initialize(raw_data)
    @data = JSON.parse(raw_data, symbolize_names: true)
    @result = { status: :success }
  end

  def call
    return :error unless @data[:api_request][:status] == "success"

    populate_result
    @result
  end

  private

  def populate_result
    @result[:name]    = concatenate_values(:name)
    @result[:address] = concatenate_values(:address)
    @result[:siret]   = get_value(:siret)

    @result[:total_amount]    = get_value(:total).to_f
    @result[:cashback_amount] = (@result[:total_amount] * 5 / 100).round(2)
  end

  def concatenate_values(field)
    receipt = @data[:document][:inference][:prediction]

    receipt[field][:values]
      .map { |x| x[:content] }
      .join(' ')
  end

  def get_value(field)
    receipt = @data[:document][:inference][:prediction]

    receipt[field][:values].first&.fetch(:content)
  end
end
