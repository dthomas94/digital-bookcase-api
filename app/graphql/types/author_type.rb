module Types
    class AuthorType < Types::BaseObject
        field :key, String, null: false
        field :revision, Integer, null: false
        field :last_modified, GraphQL::Types::ISO8601Date, null: false

        field :name, String, null: false
        def name
            object["data"]["name"]
        end

        field :links, [AuthorDataLinkType], null: true
        def links
            object["data"]["links"]
        end

        field :photos, [String], null: true
        def photos
            object["data"]["photos"]
        end

        field :birth_date, String, null: true
        def birth_date
            object["data"]["birth_date"]
        end
    end
end
