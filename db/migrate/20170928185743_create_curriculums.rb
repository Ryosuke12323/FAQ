class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :title
      t.string :number
      t.timestamps null: false
    end
  end
end
