module Types
    class UserType < Types::BaseObject
        field :id, ID, null: false
        field :name, String, null: false
        field :email, String, null: false

        field :bookcase, Types::BookcaseType, null: false
        def bookcase
            Bookcase.find_by(user_id: object[:id])
        end
    end
end