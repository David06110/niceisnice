class AddTicketAmountToCashbacks < ActiveRecord::Migration[6.0]
  def change
    add_column :cashbacks, :ticket_amount, :float
  end
end
