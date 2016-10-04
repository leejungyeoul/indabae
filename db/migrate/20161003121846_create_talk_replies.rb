class CreateTalkReplies < ActiveRecord::Migration
  def change
    create_table :talk_replies do |t|
      t.string :pass
      t.string :num
      t.text :content
      t.timestamps null: false
    end
  end
end
