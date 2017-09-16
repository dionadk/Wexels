class CreatePics < ActiveRecord::Migration[5.1]
  def change
    create_table :pics do |t|
      t.string :title
      t.string :body
      t.string :img_url
      t.string :uploaded_by
      t.timestamps
    end
  end
end
