class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.string :name
      t.text :text
      t.integer :user_id
      t.timestamps
    end
  end
end
