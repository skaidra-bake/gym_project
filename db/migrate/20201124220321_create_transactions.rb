class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.integer :member_id

      t.timestamps
    end
  end
end
