# frozen_string_literal: true

class TicketReaderService
  def initialize(ticket_image)
    @ticket = ticket_image
  end

  def call
    return { status: :error, error_message: "Photo du ticket invalide" } unless @ticket

    response = TicketReaderApiSender.new(@ticket).call
    return { status: :error, error_message: "Une erreur de lecture est survenue, merci de réessayer" } if response == :error

    TicketReaderApiResultParser.new(response).call
  end
end
