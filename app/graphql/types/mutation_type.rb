module Types
  class MutationType < Types::BaseObject
    field :add_work_to_bookcase, mutation: Mutations::AddWorkToBookcase
  end
end
