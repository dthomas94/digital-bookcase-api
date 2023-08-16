class AddSearchableColumnToWorks < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      ALTER TABLE works
      ADD COLUMN searchable tsvector GENERATED ALWAYS AS (
        setweight(to_tsvector('english', coalesce(title, '')), 'A')
      ) STORED;
    SQL
  end

  def down
    remove_column :works, :searchable
  end
end
