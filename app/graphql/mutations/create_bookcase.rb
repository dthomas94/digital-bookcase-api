module Mutations
    class CreateBookcase < BaseMutation
        argument :name, String, required: true
      
        field :bookcase, Types::BookcaseType, null: false
  
        def resolve(input)
            bookcase = Bookcase.create!(user_id: context[:current_resource][:id], name: input[:name], work_keys: [])
    
            if bookcase
                {bookcase: bookcase}
            end
        end
    end
  end
  