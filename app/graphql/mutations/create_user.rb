module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :credentials, Types::AuthProviderCredentialsInput, required: true

    type Types::UserType

    def on_jwt_dispatch(token) 
      context[:session][:token] = "Bearer #{token}"
    end

    def resolve(name: nil, credentials: nil)
      User.create!(
        name: name,
        email: credentials&.[](:email),
        password: credentials&.[](:password)
      )
    end
  end
end
