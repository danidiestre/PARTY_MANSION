class CreateMansions < ActiveRecord::Migration[6.0]
  def change
    create_table :mansions do |t|
      t.string :address
      t.integer :price
      t.integer :capacity
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
