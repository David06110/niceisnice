# frozen_string_literal: true

class TicketReaderService
  def initialize(ticket_image)
    @ticket = ticket_image
  end

  def call
    return { status: :error, error_message: "No ticket image" } unless @ticket

    response = TicketReaderApiSender.new(@ticket).call
    return { status: :error, error_message: "An error has occured; please try again" } if response == :error

    TicketReaderApiResultParser.new(response).call
  end
end
