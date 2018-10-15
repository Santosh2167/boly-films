class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    
  end

  def create
    # render json: params
    @movie = Movie.new(movie_params)
    @movie.save
    
    # redirect_to @movie
    redirect_to movie_path(@movie.id)
  end

  private def movie_params
    params.require(:movie).permit(:title,:release_date,:genre,:raintime)

    
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
