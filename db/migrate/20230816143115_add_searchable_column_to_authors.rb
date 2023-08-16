class AddSearchableColumnToAuthors < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      ALTER TABLE authors
      ADD COLUMN searchable tsvector GENERATED ALWAYS AS (
        setweight(to_tsvector('english', coalesce(name, '')), 'A')
      ) STORED;
    SQL
  end

  def down
    remove_column :authors, :searchable
  end
end
