module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, mutation: Mutations::BaseMutation
  end
end
