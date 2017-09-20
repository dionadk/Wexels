class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :num_likes
      t.references :user, index: true, foreign_key: true, null: false
      t.references :pic, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
