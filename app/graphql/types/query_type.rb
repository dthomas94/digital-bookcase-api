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

    field :works_connection, Types::WorkType.connection_type, null: false do
      argument :title, String, required: false
    end
    def works_connection(**_args)
      title = _args[:title]
      if title && !title.empty?
        Work.search_title("#{title}")
      else
        Work.all
      end
    end
    
    field :authors_connection, Types::AuthorType.connection_type, null: false do
      argument :name, String, required: false
    end
    def authors_connection(**_args)
      if _args[:name]
        Author.search_name("#{_args[:name]}")
      else
        Author.all
      end
    end

  end
end
