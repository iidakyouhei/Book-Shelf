class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.references :user, null: false,foreign_key: true
      t.text :image, null: false
      t.string :title, null: false
      t.integer :type_id, null: false
      t.text :text
      t.timestamps
    end
  end
end
