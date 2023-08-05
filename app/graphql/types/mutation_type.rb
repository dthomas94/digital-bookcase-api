module Types
  class MutationType < Types::BaseObject
    field :logout_user, mutation: Mutations::LogoutUser
    field :login_user, mutation: Mutations::LoginUser
    field :create_user, mutation: Mutations::CreateUser
  end
end
