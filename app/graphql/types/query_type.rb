module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    
    field :current_user, Types::UserType, null: true,
      description: "The current logged in user"
    def current_user
      context[:current_user]
    end

    field :works, [Types::WorkType], null: false do
      argument :title, String, required: false,
      description: "A list of all works, option to filter by title"
    end
    
    def works(title: nil)
      if title
        Work.where("data ->> 'title' like ?", "%#{title}%").limit(100)
      else
        Work.all.limit(100)
      end
    end

    field :authors, [Types::AuthorType], null: false do
      argument :name, String, required: false,
      description: "A list of all authors, option to filter by name"
    end
    
    def authors(name: nil)
      if name
        Author.where("data ->> 'name' like ?", "%#{name}%").limit(100)
      else
        Author.all.limit(100)
      end
    end
  end
end
