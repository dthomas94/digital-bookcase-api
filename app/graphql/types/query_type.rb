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

    field :open_library_works, [Types::OpenLibraryWorkType], null: false,
      description: "Return a list of works"
    def open_library_works
      OpenLibraryWorks.all
    end
  end
end
