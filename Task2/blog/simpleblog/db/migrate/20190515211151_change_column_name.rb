class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :username, :UsernameEmail
  end
end
