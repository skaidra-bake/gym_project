class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :postcode
      t.integer :membership_id
      t.date :date

      t.timestamps
    end
  end
end
