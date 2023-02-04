class FavoritesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    skip_before_action :authorized

    def index
        favorites = Favorite.all
        render json: favorites, status: :ok
    end

    def show
        favorite = find_favorite
        render json: favorite
    end

    def create
        favorite = Favorite.create!(create_favorite_params)
        render json: favorite
    end

    def destroy
        favorite = find_favorite
        favorite.destroy
        head :no_content 
    end

    private 

    def find_favorite 
        favorite = Favorite.find(params[:id])
    end

    def create_favorite_params
        params.permit(:user_id, :exercise_id)
    end

    def render_record_not_found 
        render json: { error: "Favorite not found" }, status: :not_found 
    end 
end
