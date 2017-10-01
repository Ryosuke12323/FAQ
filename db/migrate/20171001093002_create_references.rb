class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :title
      t.string :url
      t.timestamps null: false
    end
  end
end
