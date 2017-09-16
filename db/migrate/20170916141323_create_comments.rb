class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :content
      t.references :pic
      t.timestamps

    end
  end
end
