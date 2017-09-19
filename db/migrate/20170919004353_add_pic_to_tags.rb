class AddPicToTags < ActiveRecord::Migration[5.1]
  def change
    add_reference :tags, :pic, foreign_key: true
  end
end
