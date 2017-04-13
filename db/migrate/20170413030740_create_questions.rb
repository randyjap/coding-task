class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :description, null: false
      t.integer :approved_revision_id
      t.timestamps
    end
    add_index :questions, :approved_revision_id
  end
end
