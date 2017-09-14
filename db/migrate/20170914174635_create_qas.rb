class CreateQas < ActiveRecord::Migration
  def change
    create_table :qas do |t|
      t.text :question, null: false
      t.text :answer, null: false
      t.integer :category_id
      t.integer :create_user_id
      t.integer :update_user_id
      t.timestamps null: false
    end
  end
end
