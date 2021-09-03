# frozen_string_literal: true

class TicketReaderApiResultParser
  PARSING_ERRORS = {
    name: "Nom du magasin illisible",
    address: "Addresse du magasin illisble",
    total: "Total du ticket illisible"
  }

  def initialize(raw_data)
    @data = JSON.parse(raw_data, symbolize_names: true)
    @result = { status: :success }
    # ecriture de la reponse en json
    # File.write("response_#{Time.now}.json", @data, mode: "a")
  end

  def call
    return :error unless @data[:api_request][:status] == "success"

    check_confidence_errors
    return @result if @result[:status] == :error

    populate_result
    @result
  end

  private

  def populate_result
    @result[:name]    = concatenate_values(:name)
    @result[:address] = concatenate_values(:address)
    @result[:siret]   = get_value(:siret)

    @result[:total_amount]    = get_total(:total).to_f
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

  def get_total(field)
    receipt = @data[:document][:inference][:prediction]

    first = receipt[field][:values].first&.fetch(:content)
    second = receipt[field][:values].second&.fetch(:content)
    if second.present?
      if second > first
        return second
      else
        return first
      end
    else
      return first
    end
  end

  def check_confidence_errors
    receipt = @data[:document][:inference][:prediction]

    PARSING_ERRORS.keys.each do |field|
      next if receipt[field][:confidence] >= 0.65

      @result[:status] = :error
      @result[:error_message] = PARSING_ERRORS[field]
      break
    end
  end
end
