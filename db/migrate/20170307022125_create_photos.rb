class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :file_location
      t.boolean :is_public
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
