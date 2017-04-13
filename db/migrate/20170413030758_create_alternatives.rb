class CreateAlternatives < ActiveRecord::Migration[5.0]
  def change
    create_table :alternatives do |t|
      t.integer :answer_id, null: false
      t.string :description, null: false
      t.timestamps
    end
    add_index :alternatives, :answer_id
  end
end
