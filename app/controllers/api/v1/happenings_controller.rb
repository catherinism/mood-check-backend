class Api::V1::HappeningsController < ApplicationController

    before_action :set_mood

    def index
        @happenings = Happening.all
        render json: @happenings
    end

    def show
        @happening = Happening.find(params[:id])
        render json: @happening
    end

    def create
        # @happening = Happening.new(happening_params)
        @happening = @mood.happenings.new(happening_params)
        if @happening.save
            render json: @mood
        else
            render json: {error: 'Error creating a happening'}
        end
    end

    def set_mood
        @mood = Mood.find(params[:mood_id])
    end

    private
    def happening_params
        params.require(:happening).permit(:name, :mood_id)
    end
    
end
