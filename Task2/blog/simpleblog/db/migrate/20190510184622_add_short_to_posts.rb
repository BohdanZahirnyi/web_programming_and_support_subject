class AddShortToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :short, :text
  end
end
