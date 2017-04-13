class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :revision_id, null: false
      t.string :description, null: false
      t.boolean :correct, null: false
      t.timestamps
    end
    add_index :answers, :revision_id
  end
end
