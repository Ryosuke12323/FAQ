class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums, id: false do |t|
      t.string :title, null: false
      t.column :id, 'INTEGER PRIMARY KEY'
      t.timestamps null: false
    end
  end
end
