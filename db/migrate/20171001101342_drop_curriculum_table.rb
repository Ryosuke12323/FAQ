class DropCurriculumTable < ActiveRecord::Migration
  def change
    drop_table :qa_curriculums
  end
end
