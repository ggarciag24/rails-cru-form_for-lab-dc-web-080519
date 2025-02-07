class GenresController < ApplicationController

  def index
  	@genres = Genre.all
  end

  def show
  	@genre = Genre.find(params[:id])
  end

  def new
  	@genre = Genre.new
  end

  def create
  name = params[:genre][:name]
  genre = Genre.create(name: name)
  
  redirect_to genre_path(genre)
end

def update
  @genre = Genre.find(params[:id])
  @genre.update(params.require(:genre).permit(:name))
  redirect_to genre_path(@genre)
end

def edit
  @genre = Genre.find(params[:id])
end
end
