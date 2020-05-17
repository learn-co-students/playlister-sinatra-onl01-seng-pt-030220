class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |s|
      s.string :name
    end
  end
end
