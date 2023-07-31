class SessionsController < ApplicationController
    def login
        user = User.find_by(email: params[:email])

        if user&.authenticate(params[:password])
            render json: {status: 'SUCCESS', message: 'Logged in successfully', data: user}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Invalid email or password'}, status: :unauthorized
        end
    end
end