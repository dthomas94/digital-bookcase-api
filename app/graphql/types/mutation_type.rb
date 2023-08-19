module Types
  class MutationType < Types::BaseObject
    field :create_bookcase, mutation: Mutations::CreateBookcase, authenticate: false
    field :add_work_to_bookcase, mutation: Mutations::AddWorkToBookcase
    field :remove_work_from_bookcase, mutation: Mutations::RemoveWorkFromBookcase
  end
end
