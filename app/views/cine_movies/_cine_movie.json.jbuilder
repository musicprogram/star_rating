json.extract! cine_movie, :id, :title, :description, :movie_lenght, :director, :rating, :created_at, :updated_at
json.url cine_movie_url(cine_movie, format: :json)