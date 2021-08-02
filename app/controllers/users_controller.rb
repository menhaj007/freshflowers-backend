class UsersController < ApplicationController
    def create
        new_user = User.create(user_params)
        # byebug
        if new_user.valid?
            render json: new_user, status: :created
        else
            render json: {errors: new_user.errors.full_messages}, status: :unprocessable_entity
        end

    end
    
    def destroy
        user = User.find_by(id: params[:id])
        if user
            user.destroy
        else
            render json: {error: "User not found"}, status: :not_found
        end
    end

    private
    def user_params
        # params.permit(:email, :password, :password_confirmation)
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
