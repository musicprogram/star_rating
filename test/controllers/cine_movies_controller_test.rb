require 'test_helper'

class CineMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cine_movie = cine_movies(:one)
  end

  test "should get index" do
    get cine_movies_url
    assert_response :success
  end

  test "should get new" do
    get new_cine_movie_url
    assert_response :success
  end

  test "should create cine_movie" do
    assert_difference('CineMovie.count') do
      post cine_movies_url, params: { cine_movie: { description: @cine_movie.description, director: @cine_movie.director, movie_lenght: @cine_movie.movie_lenght, rating: @cine_movie.rating, title: @cine_movie.title } }
    end

    assert_redirected_to cine_movie_url(CineMovie.last)
  end

  test "should show cine_movie" do
    get cine_movie_url(@cine_movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_cine_movie_url(@cine_movie)
    assert_response :success
  end

  test "should update cine_movie" do
    patch cine_movie_url(@cine_movie), params: { cine_movie: { description: @cine_movie.description, director: @cine_movie.director, movie_lenght: @cine_movie.movie_lenght, rating: @cine_movie.rating, title: @cine_movie.title } }
    assert_redirected_to cine_movie_url(@cine_movie)
  end

  test "should destroy cine_movie" do
    assert_difference('CineMovie.count', -1) do
      delete cine_movie_url(@cine_movie)
    end

    assert_redirected_to cine_movies_url
  end
end
