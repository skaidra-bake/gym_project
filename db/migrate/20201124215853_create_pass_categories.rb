class CreatePassCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :pass_categories do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
