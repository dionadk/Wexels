class ChangeColumnNull < ActiveRecord::Migration[5.1]
  def change
    change_column :likes, :num_likes, :integer, :null => true
  end
end
