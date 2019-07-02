class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :priority, default: 0, null: false
      t.boolean :active, default: true
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
