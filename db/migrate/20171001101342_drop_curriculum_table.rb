class DropCurriculumTable < ActiveRecord::Migration
  def change
    drop_table :qa_curriculums
    drop_table :curriculums
  end
end
