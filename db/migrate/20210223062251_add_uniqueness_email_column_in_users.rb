class AddUniquenessEmailColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    remove_index :users, :name
    add_index :users, :name
    # New Unique Index
    remove_index :users, :email
    add_index :users, :email, unique: true
  end
end
