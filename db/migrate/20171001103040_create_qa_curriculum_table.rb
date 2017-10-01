class CreateQaCurriculumTable < ActiveRecord::Migration
  def change
    create_table :qa_curriculums do |t|
      t.references :qa, foreign_key: true
      t.references :curriculum, foreign_key: true
    end
  end
end
