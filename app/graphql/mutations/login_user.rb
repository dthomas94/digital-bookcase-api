module Mutations
  class LoginUser < BaseMutation
    argument :credentials, Types::AuthProviderCredentialsInput, required: false

    field :user, Types::UserType, null: true

    # def on_jwt_dispatch(token)
    #   context[:session][:token] = token

    # end

    def resolve(credentials: nil)
      return unless credentials

      user = User.find_by(email: credentials[:email])

      return {user: nil} unless user


      if user.valid_password?(credentials[:password])
        context[:session][:token] = JWT.encode({email: credentials[:email], password: credentials[:password]}, Rails.application.credentials.devise_jwt_secret_key!).first
        puts context[:session][:token]
        {user: user}
      else
        raise GraphQL::ExecutionError.new("Invalid email/password", extensions: {code: 'AUTHENTICATION_ERROR'})
      end
    end
  end
end
