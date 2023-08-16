class Work < ApplicationRecord
  default_scope { order(title: :desc) }

  include PgSearch::Model
  pg_search_scope :search_title,
                  against: { title: 'A'},
                  using: {
                    tsearch: {
                      dictionary: 'english', tsvector_column: 'searchable'
                    }
                  }
end
  