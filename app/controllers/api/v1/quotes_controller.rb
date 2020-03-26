class Api::V1::QuotesController < ApplicationController

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

    private
    def quote_params
        params.require(:quote).permit(:phrase, :mood_id)
    end
    
end
