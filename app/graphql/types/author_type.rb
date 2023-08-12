module Types
    class AuthorType < Types::BaseObject
        field :key, String, null: false
        field :revision, Integer, null: false
        field :last_modified, String, null: false, description: "date"
        field :data, Types::AuthorDataType, null: false
    end
end
