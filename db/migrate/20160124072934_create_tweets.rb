class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.text :img
      t.integer :user_id
      t.timestamps 
    end
  end
end
