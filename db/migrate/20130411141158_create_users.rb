class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :name, :password_hash
      u.timestamps
    end
  end
end
