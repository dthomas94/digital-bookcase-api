module Mutations
    class CreateBookcase < BaseMutation
        argument :name, String, required: true
        argument :user_id, Integer, required: true
      
        field :bookcase, Types::BookcaseType, null: false
  
        def resolve(input)
            bookcase = Bookcase.create!(user_id: input[:user_id], name: input[:name], work_keys: [])
    
            if bookcase
                {bookcase: bookcase}
            end
        end
    end
  end
  