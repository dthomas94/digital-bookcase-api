module Types
    class AuthorType < Types::BaseObject
        field :key, String, null: false
        field :revision, Integer, null: false
        field :last_modified, GraphQL::Types::ISO8601Date, null: false
        field :data, AuthorDataType, null: false
    end
end
