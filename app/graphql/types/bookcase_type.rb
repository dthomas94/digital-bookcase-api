module Types
    class BookcaseType < Types::BaseObject
        field :id, String, null: false
        field :user_id, String, null: false, description: "id of the user the bookcase was made by"
        field :name, String, null: false, description: "name of the bookcase"
        field :work_keys, [String], null: false, description: "array of the work key"
    end
end
