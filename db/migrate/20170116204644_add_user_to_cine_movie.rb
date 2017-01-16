class AddUserToCineMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :cine_movies, :user_id, :integer
  end
end
