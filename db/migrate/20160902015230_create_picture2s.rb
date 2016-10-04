class CreatePicture2s < ActiveRecord::Migration
  def change
    create_table :picture2s do |t|
      t.string :title
      # t.text :content
      t.string :image_url, default: ""

      t.timestamps null: false
    end
  end
end
