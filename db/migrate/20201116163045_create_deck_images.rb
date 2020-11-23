class CreateDeckImages < ActiveRecord::Migration[5.2]
  def change
    create_table :deck_images do |t|
      t.text :deck_name
      t.string :image_id
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
