module Mutations
    class RemoveWorkFromBookcase < BaseMutation
      argument :work_key, String, required: true

      field :bookcase, Types::BookcaseType, null: false
  
      def resolve(input)
        bookcase = Bookcase.find_by(user_id: context[:current_resource][:id])
        
        if bookcase && bookcase.work_keys.include?(input[:work_key])
            work_keys = bookcase.work_keys[0 .. bookcase.work_keys.length]
            work_keys.delete(input[:work_key])
            bookcase.update!(work_keys: work_keys)
        end
  
        {bookcase: bookcase}
      end
    end
  end
  