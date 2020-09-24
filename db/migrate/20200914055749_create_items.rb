class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,                  null: false, foreign_key: true
      t.text :explanation
      t.references :category,           null: false, foreign_key: true
      t.integer :season_id,          null: false
      t.string :brand
      t.date :purchase_day
      t.string :price
      t.string :place

      t.timestamps
    end
  end
end
