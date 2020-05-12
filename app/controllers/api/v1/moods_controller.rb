class Api::V1::MoodsController < ApplicationController

    def index
        @moods = Mood.all
        render json: @moods
    end

    def show
        @mood = Mood.find(params[:id])
        render json: @mood
    end

    def create
        # binding.pry
        @mood = Mood.new(mood_params)
        if @mood.save
            render json: @mood
        else
            render json: {error: 'Error creating a mood'}
        end
    end

    private
    def mood_params
        params.require(:mood).permit(:feeling, :date, :weather, :note, :url)
    end
    
end
