class CreateOpenLibraryWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :open_library_works do |t|
      t.string :key
      t.string :type
      t.string :title
      t.string :title_suggest
      t.string :title_sort
      t.integer :edition_count
      t.integer :first_publish_year
      t.integer :number_of_pages_media
      t.integer :last_modified_i
      t.integer :ebook_count_i
      t.string :ebook_access
      t.boolean :has_fulltext
      t.boolean :ublic_scan_b
      t.integer :_version_
      t.string :author_facet, array: true
      t.string :publisher_facet, array: true
      t.string :author_name, array: true
      t.string :author_key, array: true
      t.string :language, array: true
      t.string :publisher, array: true
      t.string :isbn, array: true
      t.integer :publish_year, array: true
      t.string :publish_date, array: true
      t.string :edition_key, array: true
      t.string :seed, array: true

      t.timestamps
    end
  end
end
