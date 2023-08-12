module Types
  class MutationType < Types::BaseObject
    field :add_work_to_bookcase, mutation: Mutations::AddWorkToBookcase
    field :create_bookcase, mutation: Mutations::CreateBookcase
  end
end
