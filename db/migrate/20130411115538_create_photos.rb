class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |p|
      p.string :url, :filename
      p.timestamps
    end
  end
end
