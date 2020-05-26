class Api::V1::MoodsController < ApplicationController
    before_action :set_mood, only: [:show, :update]

    def index
        @moods = Mood.all
        render json: @moods
    end

    def show
        # @mood = Mood.find()
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

    def update
        if @mood.update(mood_params)
            render json: @mood
        else
            render json: {error: 'Error creating a mood'}
        end
    end

    private

    def set_mood
        @mood = Mood.find_by(id: params[:id])
    end

    def mood_params
        params.require(:mood).permit(:feeling, :date, :weather, :note)
    end
    
end
