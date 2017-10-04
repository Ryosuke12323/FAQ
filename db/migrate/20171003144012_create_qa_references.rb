class CreateQaReferences < ActiveRecord::Migration
  def change
    create_table :qa_references do |t|
      t.references :qa, foreign_key: true
      t.references :reference, foreign_key: true
      t.timestamps null: false
    end
  end
end
