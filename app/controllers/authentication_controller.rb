class AuthenticationController < ApplicationController
    # skip_before_action :authenticate_request
   
    def authenticate
      puts "User Params"
      puts params[:email]
      command = AuthenticateUser.call(params[:email], params[:password])
   
      if command.success?
        render json: { auth_token: command.result }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end

    def user_params
      params.fetch(:user, {}).permit(:name, :email)
    end  

   end