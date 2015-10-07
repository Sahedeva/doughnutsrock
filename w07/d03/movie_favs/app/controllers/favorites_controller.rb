class FavoritesController < ApplicationController
  before_action :favorite_params, :only => [:create, :update]

  def index
    @favorites = current_user.favorites

    render :json => @favorites
  end

  def show
    @favorite = current_user.favorites.find(params[:id])

    render :json => @favorite.movie
  end

  def create
    @movie = Movie.find_or_create_by(:name => params[:name], :year => params[:year], :omdb_id => params[:omdb_id])
    @favorite = Favorite.create(:movie_id => @movie.id, :user_id => current_user.id)

    render :json => @favorite.movie
  end

  def destroy
    @favorite = current_user.favorites.find(params[:id])

    @favorite.destroy

    render :json => "Successfully destroyed"
  end

  private

  def favorite_params
    params.require(:favorite).permit([:movie_id])
  end

end