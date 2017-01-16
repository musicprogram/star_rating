class CineMoviesController < ApplicationController
  before_action :set_cine_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /cine_movies
  # GET /cine_movies.json
  def index
    @cine_movies = CineMovie.all
  end

  # GET /cine_movies/1
  # GET /cine_movies/1.json
  def show
  end

  # GET /cine_movies/new
  def new
    @cine_movie = current_user.cine_movies.build
  end

  # GET /cine_movies/1/edit
  def edit
  end

  # POST /cine_movies
  # POST /cine_movies.json
  def create
    @cine_movie = current_user.cine_movies.build(cine_movie_params)

    respond_to do |format|
      if @cine_movie.save
        format.html { redirect_to cine_movies_path, notice: 'Cine movie was successfully created.' }
        format.json { render :show, status: :created, location: @cine_movie }
      else
        format.html { render :new }
        format.json { render json: @cine_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cine_movies/1
  # PATCH/PUT /cine_movies/1.json
  def update
    respond_to do |format|
      if @cine_movie.update(cine_movie_params)
        format.html { redirect_to cine_movies_path, notice: 'Cine movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @cine_movie }
      else
        format.html { render :edit }
        format.json { render json: @cine_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cine_movies/1
  # DELETE /cine_movies/1.json
  def destroy
    @cine_movie.destroy
    respond_to do |format|
      format.html { redirect_to cine_movies_url, notice: 'Cine movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cine_movie
      @cine_movie = CineMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cine_movie_params
      params.require(:cine_movie).permit(:title, :description, :movie_lenght, :director, :rating, :user_id)
    end
end
