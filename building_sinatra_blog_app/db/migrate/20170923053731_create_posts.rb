class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :category
      t.text :idea
      t.timestamps null: false
      
    end
  end
end
