module Types
    class OpenLibraryWorkType < Types::BaseObject
        field :id, ID, null: false
        field :key, String, null: false
        field :type, String, null: false
        field :title, String, null: false
        field :title_suggest, String
        field :title_sort, String
        field :edition_count, Int, null: false
        field :first_publish_year, Int, null: false
        field :number_of_pages_median, Int, null: false
        field :last_modified_i, Int
        field :ebook_count_i, Int
        field :ebook_access, String
        field :has_fulltext, Boolean, null: false
        field :public_scan_b, Boolean, null: false
        field :_version_, Int
        field :author_facet, [String]
        field :publisher_facet, [String]
        field :author_name, [String], null: false
        field :author_key, [String], null: false
        field :language, [String], null: false
        field :publisher, [String], null: false
        field :isbn, [String], null: false
        field :publish_year, [Int], null: false
        field :publish_date, [String], null: false
        field :edition_key, [String], null: false
        field :seed, [String]
    end
end
