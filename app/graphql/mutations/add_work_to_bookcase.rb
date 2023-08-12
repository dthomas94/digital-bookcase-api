module Mutations
  class AddWorkToBookcase < BaseMutation
    argument :work_key, String, required: true
    argument :user_id, Integer, required: true
    # TODO: define return fields
    field :bookcase, Types::BookcaseType, null: false

    def resolve(input)
      bookcase = Bookcase.find_by(user_id: input[:user_id])

      if bookcase
        bookcase.update!(work_keys: bookcase.work_keys.push(input[:work_key]))
        {bookcase: bookcase}
      end
    end
  end
end
