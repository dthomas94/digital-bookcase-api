module Mutations
    class Login < BaseMutation
        argument :email, String, required: true
        argument :password, String, required: true

        type Types::UserType

        def resolve(email:, password:)
            user = User.find_for_authentication(email: email)

            #ensure that the user was found and that the password is valid
            if user.present? && user.valid_password?(password)
                # provide the user with a new token
                user.update(authentication_token: SecureRandom.hex(10))

                user
            else
                raise GraphQL::ExecutionError, "Invalid credentials"
            end
        end
    end
end
