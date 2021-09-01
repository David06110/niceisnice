# frozen_string_literal: true

class TicketReaderApiSender
  API_URL = URI("https://api.mindee.net/v1/products/David06110/niceinvoice/v1/predict")
  TOKEN = ENV['MINDEE_API_KEY']

  def initialize(ticket_image)
    @ticket = ticket_image
  end

  def call
    request = Net::HTTP::Post.new(API_URL)
    request["Authorization"] = "Token #{TOKEN}"
    request.set_form([['document', @ticket]], 'multipart/form-data')

    http = Net::HTTP.new(API_URL.host, API_URL.port)
    http.use_ssl = true
    http.request(request)
  end
end
