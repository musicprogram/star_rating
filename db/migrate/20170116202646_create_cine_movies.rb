class CreateCineMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :cine_movies do |t|
      t.string :title
      t.text :description
      t.string :movie_lenght
      t.string :director
      t.string :rating

      t.timestamps
    end
  end
end
