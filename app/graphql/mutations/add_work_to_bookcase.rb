module Mutations
  class AddWorkToBookcase < BaseMutation
    argument :work_id, String, required: true
    argument :user_id, Integer, required: true
    # TODO: define return fields
    field :bookcase, Types::BookcaseType, null: false

    def resolve(work_id, user_id)
      bookcase = Bookcase.find_by(user_id: user_id)

      if bookcase
        bookcase.update!(work_ids: bookcase.work_ids.concat(work_id))
        {bookcase: bookcase}
      end
    end
  end
end
