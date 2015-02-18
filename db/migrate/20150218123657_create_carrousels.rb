class CreateCarrousels < ActiveRecord::Migration
  def change
    create_table :carrousels do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.timestamps null: false
    end
  end
end
