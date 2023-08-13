module Types
    class WorkType < Types::BaseObject
        field :key, String, null: false, description: "openlibrary ref string /works/OL10000000W"
        field :revision, Integer, null: false
        field :last_modified, GraphQL::Types::ISO8601Date, null: false
        field :data, Types::WorkDataType, null: false

        field :authors, [Types::AuthorType], null: false

        def authors
            foundAuthors = []
            AuthorWork.where(work_key: object["key"]).find_each do |authorWork|
                if authorWork
                    foundAuthor = Author.find_by(key: authorWork[:author_key])
                    foundAuthors.push(foundAuthor)
                    if !foundAuthor 
                        raise GraphQL::ExecutionError, "Author not found"
                    end
                else
                    raise GraphQL::ExecutionError, "AuthorWork not found"
                end
            end

            foundAuthors
        end
    end
end
