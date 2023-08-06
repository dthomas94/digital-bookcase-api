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
  end
end
