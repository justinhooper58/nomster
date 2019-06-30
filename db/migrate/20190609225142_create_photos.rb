class CreatePhotos < ActiveRecord::Migration[5.2]
  def create
    create_table :photos do |t|
      t.string :caption
      t.integer :place_id
      t.timestamps
      t.integer :user_id
    end

    add_index :photos, [:user_id, :place_id]

     end
  
end
