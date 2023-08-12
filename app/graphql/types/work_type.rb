module Types
    class WorkType < Types::BaseObject
        field :type, String, null: false
        field :key, String, null: false, description: "openlibrary ref string /authors/OL3964940A"
        field :revision, Integer, null: false
        field :last_modified, String, null: false, description: "date 2010-04-28"
        field :data, WorkDataType, null: false
    end
end
