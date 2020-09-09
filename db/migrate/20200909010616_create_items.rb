class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,         null: false, default:"" 
      t.string :price,        null: false, default:""
      # t.genre_id :category,   null: false
      t.text :image,          null: false 
      t.text :comment,        null: false
      t.integer :postage,     null: false 
      t.integer :area,        null: false 
      t.integer :days,        null: false
      t.integer :user_id,     foring_key: true
      t.timestamps
    end
  end
end
