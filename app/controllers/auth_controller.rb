class AuthController < ApplicationController
    def login
        # joan_mohr@graham.com
        logged_in_user = User.find_by(email: params[:email])
        # byebug
        if logged_in_user && logged_in_user.authenticate(params[:password])
            session[:user_id] = logged_in_user.id
            # byebug  
            render json: {
                authenticated: true,
                message: "user logged in",
                user: logged_in_user
            }, include: [:store], status: :accepted
        else
            render json: {
                authenticated: false,
                message: "invalid credentials, please try again, or sign up"
            }, status: :unauthorized
        end
    end

    def logout
        session.delete :user_id
        # byebug
        if session[:user_id] == nil
            render json: {message: "user logged out"}
        else
            render json: {message: "Failed"}
        end
        puts session[:user_id]
        # byebug
    end


end
