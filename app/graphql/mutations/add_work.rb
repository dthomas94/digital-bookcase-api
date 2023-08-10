module Mutations
  class AddWork < BaseMutation
    argument :open_library_work, Types::OpenLibraryWorkInput, required: true
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    def resolve(open_library_work: nil)
      work = OpenLibraryWork.create!(open_library_work)
      { work: work }
    end
  end
end
