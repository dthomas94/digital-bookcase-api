module Types
    class WorkDataType < Types::BaseObject
        field :key, String, null: false, description: "openlibrary ref string /authors/OL3964940A"
        field :title, String, null: false
        field :revision, Integer, null: false
        field :latest_revision, Integer, null: false
        field :last_modified, String, null: false, description: "datetime 2009-12-11T01:57:19.964652"
        field :created, String, null: false, description: "datetime 2009-12-11T01:57:19.964652"
        field :authors, [String], null: false, description: "array of openlibrary ref strings ['/authors/OL3964940A',...]"
        field :covers, [Int], description: "array of cover identifiers for openlibrary"
    end
end