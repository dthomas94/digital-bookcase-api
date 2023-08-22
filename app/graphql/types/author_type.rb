module Types
    class AuthorType < Types::BaseObject
        field :key, String, null: false
        field :name, String, null: false
        field :links, [String], null: true

        field :olid, String, null: false
        def olid
            object["key"][9..object["key"].length]
        end
    end
end
