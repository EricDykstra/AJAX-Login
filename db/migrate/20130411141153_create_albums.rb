class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |a|
      a.string :name, :password_hash
      a.integer :user_id
      a.timestamps
    end
  end
end
