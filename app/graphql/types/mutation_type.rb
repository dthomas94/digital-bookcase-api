module Types
  class MutationType < Types::BaseObject
    field :add_work, mutation: Mutations::AddWork
  end
end
