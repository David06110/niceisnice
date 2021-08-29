class AddTicketToCashbacks < ActiveRecord::Migration[6.0]
  def change
    add_column :cashbacks, :ticket, :decimal
  end
end
