module Mutations
  class AddWorkToBookcase < BaseMutation
    argument :work_key, String, required: true
    
    field :bookcase, Types::BookcaseType, null: false

    def resolve(input)
      bookcase = Bookcase.find_by(user_id: context[:current_resource][:id])

      if bookcase && !bookcase.work_keys.include?(input[:work_key])
        bookcase.update!(work_keys: bookcase.work_keys.push(input[:work_key]))
      end

      {bookcase: bookcase}
    end
  end
end
