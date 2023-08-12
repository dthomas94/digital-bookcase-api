module Types
    class WorkDataType < Types::BaseObject
        field :key, String, description: "openlibrary ref string /authors/OL3964940A"
        field :title, String
        field :revision, Integer
        field :latest_revision, Integer
        field :last_modified, String, description: "datetime 2009-12-11T01:57:19.964652"
        field :created, String, description: "datetime 2009-12-11T01:57:19.964652"
        field :authors, [String], description: "array of openlibrary ref strings ['/authors/OL3964940A',...]"
        field :covers, [Int]
    end
end