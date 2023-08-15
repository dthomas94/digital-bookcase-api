module Types
    class WorkType < Types::BaseObject
        field :key, String, null: false, description: "openlibrary ref string /works/OL10000000W"
        field :revision, Integer, null: false
        field :title, String, null: false

        field :authors, [Types::AuthorType], null: false

        def authors
            foundAuthors = []
            authorWorks = AuthorWork.where(work_key: object["key"]).all
            
            authorWorks.each do |authorWork|
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
