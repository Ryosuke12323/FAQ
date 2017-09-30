class AddCategoryIdToQa < ActiveRecord::Migration
  def change
      add_reference :qas, :category, index: true
  end
end
