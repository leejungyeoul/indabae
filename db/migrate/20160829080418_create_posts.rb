class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :name1
      
      t.string :name
      t.string :email
      t.string :phone
      t.text :content1
      t.timestamps null: false
    end
  end
end
