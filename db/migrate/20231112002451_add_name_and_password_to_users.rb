class AddNameAndPasswordToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :password_digest, :string
  end
end
