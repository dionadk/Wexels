class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.references :tag, index: true, foreign_key: true, null: false
      t.references :pic, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
