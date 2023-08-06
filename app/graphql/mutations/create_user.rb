module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :credentials, Types::AuthProviderCredentialsInput, required: true

    field :user, Types::UserType, null: true

    def resolve(name: nil, credentials: nil)
      user = User.create!(
        name: name,
        email: credentials&.[](:email),
        password: credentials&.[](:password)
      )

      {user: user}
    end
  end
end
