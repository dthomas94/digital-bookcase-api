class Work < ApplicationRecord
    include PgSearch::Model
  pg_search_scope :search_title, against: :title
end
  