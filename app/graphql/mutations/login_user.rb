module Mutations
  class LoginUser < BaseMutation
    argument :credentials, Types::AuthProviderCredentialsInput, required: true

    field :user, Types::UserType, null: true

    def resolve(credentials: nil)
      return unless credentials

      user = User.find_by(email: credentials[:email])

      return {user: nil} unless user


      if user.valid_password?(credentials[:password])
        current_user = user
        puts current_user
        {user: current_user}
      else
        raise GraphQL::ExecutionError.new("Invalid email/password", extensions: {code: 'AUTHENTICATION_ERROR'})
      end
    end
  end
end
