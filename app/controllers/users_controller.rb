class UsersController < ApplicationController
    def index
        users = User.all
        render json: {status: 'SUCCESS', message: 'Loaded users', data: users}, status: :ok
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: {status: 'SUCCESS', message: 'User created', data: user}, status: :ok
        else
            render json: {status: 'ERROR', message: 'User creation failed', data: user.errors}, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
end
