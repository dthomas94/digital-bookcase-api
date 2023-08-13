module Types
    class WorkDataType < Types::BaseObject
        field :key, String, null: false, description: "openlibrary ref string /works/OL10000000W"
        field :title, String, null: false
        field :revision, Integer, null: false
        field :latest_revision, Integer, null: false
        field :last_modified, GraphQL::Types::ISO8601Date, null: false
        field :created, GraphQL::Types::ISO8601DateTime, null: false        
        field :authors, [String], null: false, description: "array of openlibrary ref strings ['/works/OL10000000W',...]"
        field :covers, [Int], description: "array of cover identifiers for openlibrary"



        def created
            return object["created"]["value"]
        end
    end
end