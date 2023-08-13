class AuthorWork < ApplicationRecord
    self.primary_keys = :author_key, :work_key
end