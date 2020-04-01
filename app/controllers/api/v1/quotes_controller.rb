class Api::V1::QuotesController < ApplicationController

    before_action :set_mood

    def index
        @quotes = Quote.all
        render json: @quotes
    end

    def show
        @quote = Quote.find_by(id: params[:id])
        render json: @quote
    end

    def create
        @quote = Quote.new(quote_params)
    end

    def set_mood
        @mood = Mood.find(params[:mood_id])
    end

    private
    def quote_params
        params.require(:quote).permit(:phrase, :mood_id)
    end
    
end
