class Api::V1::MoodsController < ApplicationController

    def index
        @moods = Mood.all
        render json: @moods
    end

    def show
        @mood = Mood.find_by(id: params[:id])
        render json: @mood
    end

    def create
        mood = Mood.new(mood_params)
        render json: mood
    end

    private
    def mood_params
        params.require(:mood).permit(:feeling, :url)
    end
    
end
