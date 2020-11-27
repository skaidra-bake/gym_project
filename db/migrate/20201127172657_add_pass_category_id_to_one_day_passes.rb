class AddPassCategoryIdToOneDayPasses < ActiveRecord::Migration[6.0]
  def change
    add_column :one_day_passes, :pass_category_id, :integer
  end
end
