module Types
    class UserType < Types::BaseObject
        field :id, ID, null: false
        field :name, String, null: false
        field :email, String, null: false
        field :authentication_token, String, null: false
    end
end