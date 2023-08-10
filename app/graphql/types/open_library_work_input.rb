module Types
    class OpenLibraryWorkInput < BaseInputObject
        # the name is usually inferred by class name but can be overwritten
        graphql_name 'OPEN_LIBRARY_WORK_INPUT'
  
        argument :id, ID, required: true
        argument :key, String, required: true
        argument :type, String, required: true
        argument :title, String, required: true
        argument :title_suggest, String
        argument :title_sort, String
        argument :edition_count, Int, required: true
        argument :first_publish_year, Int, required: true
        argument :number_of_pages_median, Int, required: true
        argument :last_modified_i, Int
        argument :ebook_count_i, Int
        argument :ebook_access, String
        argument :has_fulltext, Boolean, required: true
        argument :public_scan_b, Boolean, required: true
        argument :_version_, Int
        argument :author_facet, [String]
        argument :publisher_facet, [String]
        argument :author_name, [String], required: true
        argument :author_key, [String], required: true
        argument :language, [String], required: true
        argument :publisher, [String], required: true
        argument :isbn, [String], required: true
        argument :publish_year, [Int], required: true
        argument :publish_date, [String], required: true
        argument :edition_key, [String], required: true
        argument :seed, [String]
    end
end