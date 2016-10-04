class CreateTalk2s < ActiveRecord::Migration
  def change
    create_table :talk2s do |t|
      t.string :name
      t.string :pass
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
