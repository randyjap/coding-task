class CreateRevisions < ActiveRecord::Migration[5.0]
  def change
    create_table :revisions do |t|
      t.integer :question_id, null: false
      t.integer :version, null: false
      t.timestamps
    end
    add_index :revisions, :question_id
  end
end
