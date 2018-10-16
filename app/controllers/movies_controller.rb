class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    
  end

  def create #done
    # render json: params
    @movie = Movie.new(movie_params)
    @movie.save
    
    # redirect_to @movie
    redirect_to movie_path(@movie.id)
  end

  private def movie_params
    params.require(:movie).permit(:title,:release_date,:genre,:raintime)

    
  end

  def new #done
    @movie = Movie.new
  end

  def edit 
    @movie = Movie.find(params[:id])
    
  end

  def update
    # render json:params
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)

    redirect_to @movie
  end

  def destroy
    # render json: params
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end
end
