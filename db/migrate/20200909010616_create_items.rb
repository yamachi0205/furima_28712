class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,            null: false, default:"" 
      t.string :price,           null: false, default:""
      t.integer :category_id,    null: false
      t.text :comment,           null: false
      t.integer :postage_id,     null: false 
      t.integer :area_id,        null: false 
      t.integer :days_id,        null: false
      t.integer :status_id,      null: false
      t.integer :user_id,        foring_key: true
      t.timestamps
    end
  end
end
