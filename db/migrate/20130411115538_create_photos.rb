class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |p|
      p.string :url
      p.integer :album_id
      p.timestamps
    end
  end
end
