class Author < ApplicationRecord
    default_scope { order(name: :asc) }

    include PgSearch::Model
    pg_search_scope :search_name,
                  against: { name: 'A'},
                  using: {
                    tsearch: {
                      dictionary: 'english', tsvector_column: 'searchable'
                    }
                  }

end