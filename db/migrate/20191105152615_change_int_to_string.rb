class ChangeIntToString < ActiveRecord::Migration[6.0]
  def change
    change_column :enrolled_users, :userId, :string
  end
end
