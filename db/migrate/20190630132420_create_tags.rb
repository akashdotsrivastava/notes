class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :text, null: false
      t.timestamps
    end
  end
end
