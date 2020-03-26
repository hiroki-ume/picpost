class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :title
      t.string :image_id
      t.text :caption
      t.string :image_category
      t.integer :user_id

      t.timestamps
    end
  end
end
