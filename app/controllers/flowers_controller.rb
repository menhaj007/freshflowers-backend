class FlowersController < ApplicationController
    def create
        flower = Flower.(profile_params)
        if flower.valid?
            render json: flower, status: :created
        else
            render json: {errors: flower.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def flower_params
        params.permit(:name, :price)
    end
end
