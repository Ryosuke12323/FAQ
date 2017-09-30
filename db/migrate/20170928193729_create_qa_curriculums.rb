class CreateQaCurriculums < ActiveRecord::Migration
  def change
    create_table :qa_curriculums do |t|
      t.references :qa, foreign_key: true
      t.integer :curriculum, foreign_key:true
      t.timestamps null: false
    end
  end
end
