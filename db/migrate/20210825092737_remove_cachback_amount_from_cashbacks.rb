class RemoveCachbackAmountFromCashbacks < ActiveRecord::Migration[6.0]
  def change
    remove_column :cashbacks, :cachback_amount
  end
end
