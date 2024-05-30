class ChangeUsers < ActiveRecord::Migration[7.0]
  def change
    remove_timestamps :users
    add_index(:users, :email, :string ,{unique=>true})
  end
end
