module Types
    class BookcaseType < Types::BaseObject
        field :id, String, null: false
        field :user_id, String, null: false, description: "id of the user the bookcase was made by"
        field :name, String, null: false, description: "name of the bookcase"
        field :work_ids, [String], null: false, description: "database id of the work"
    end
end
