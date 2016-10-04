class CreatePicture4s < ActiveRecord::Migration
  def change
    create_table :picture4s do |t|
      t.string :title
      # t.text :content
      t.string :image_url, default: ""
      t.timestamps null: false
    end
  end
end
