class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,         null: false, foreign_key: true
      t.text :explanation,        null: false
      t.integer :category_id,     null: false
      t.integer :season_id,       null: false
      t.string :brand
      t.date :parchase_day
      t.string :price
      t.string :place

      t.timestamps
    end
  end
end
