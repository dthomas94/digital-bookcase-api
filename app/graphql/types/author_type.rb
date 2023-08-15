module Types
    class AuthorType < Types::BaseObject
        field :key, String, null: false
        field :name, String, null: false
        field :links, [String], null: true
    end
end
