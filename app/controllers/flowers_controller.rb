class FlowersController < ApplicationController
    def create
        flower = Flower.(profile_params)
        if flower.valid?
            render json: flower.to_json(except: [:created_at, :updated_at]), status: :created
        else
            render json: {errors: flower.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def index
        flowers = Flower.all
        if flowers.empty?
            render json: {error: "No flowers for sale today"}, status: :not_found
        else
            render json: flowers, include: [:stores], status: :ok
        end
    end

    def show
        flower = Flower.find_by(id: params[:id])
        # byebug
        if flower
            render json: flower.to_json(except: [:created_at, :updated_at]), status: :ok
        else
            render json: {message: "Not found"}, status: :not_found #come back to this.
        end

    end
    def update
        flower = Flower.find_by(id: params[:id])
        if flower
            flower.update(flower_params)
            render json: flower.to_json(except: [:created_at, :updated_at]), status: :ok
        else
            render json: {errors: flower.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def edit
        flower = Flower.find(params[:id])
        flower.assign_attributes(flower_params)
        if flower.valid?
            flower.save
            render json: flower.to_json(except: [:created_at, :updated_at]), status: :ok
        else
            render json: {errors: flower.errors.full_messages}, status: :unprocessable_entity
        end
    end


    private
    def flower_params
        params.permit(:name, :price)
    end
end
