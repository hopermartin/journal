class UsersChangeDataTypeForPassword < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :username, :string)
    change_column(:users, :password, :string)
  end
end
