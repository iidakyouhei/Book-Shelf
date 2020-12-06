class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.references :user, null: false,foreign_key: true
      t.text :url, null: false
      t.string :title, null: false
      t.date :date, null: false
      t.integer :type_id, null: false,foreign_key: true
      t.timestamps
    end
  end
end
