module Mutations
  class LogoutUser < BaseMutation
    argument :email, String, required: false

    field :user, Types::UserType, null: true

    def resolve(email: nil)
      if current_user
        {user: current_user, errors: []}
      else
        raise GraphQL::ExecutionError.new("Could not destroy session", extensions: {code: 'SESSION_ERROR'})
      end
    end
  end
end
