module Api
    class QuotesController < ApplicationController
        def index
            render json: QuotableApi::Client.quotes
        end

        def random
            render json: QuotableApi::Client.random
        end

        def show
            render json: QuotableApi::Client.find(params[:id])
        end
    end
end
