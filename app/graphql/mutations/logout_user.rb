module Mutations
  class LogoutUser < BaseMutation
    field :user, Types::UserType, null: true

    argument :email, String, required: false

    def resolve(email: nil)
      @token = context[:session][:token]
        puts @token
      if @token.present?
        jwt_payload = JWT.decode("Bearer #{@token}", Rails.application.credentials.devise_jwt_secret_key!)
        
        user = User.find(jwt_payload['sub'])
      end

      if user 
        {user: user, errors: []}
      else
        raise GraphQL::ExecutionError.new("Could not destroy session", extensions: {code: 'SESSION_ERROR'})
      end
    end
  end
end
