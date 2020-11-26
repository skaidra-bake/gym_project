class ChangeTransactionsToSales < ActiveRecord::Migration[6.0]
  def change
    rename_table :transactions, :sales
  end
end
