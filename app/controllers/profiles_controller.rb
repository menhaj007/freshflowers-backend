class ProfilesController < ApplicationController
    def create
        new_profile = Profile.create(profile_params)
        # byebug
        if new_profile.valid?
            render json: new_profile, status: :created
        else
            render json: {errors: new_profile.errors.full_messages}, status: :unprocessable_entity
        end
    end
    def index
        profiles = Profile.all
        if profiles.empty?
            render json: {errors: "No profiles found"}, status: :not_found
        else
            render :json => profiles, include: [:user] ,status: :ok
        end
    end

    private
    def profile_params
        params.permit(:address, :image_url, :store_id, :user_id)
    end
end
