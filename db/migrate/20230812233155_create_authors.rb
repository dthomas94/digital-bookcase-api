class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table(:authors, primary_key: "key", id: :text, force: :cascade) do |t|
      t.integer :revision
      t.date :last_modified, null: false
      t.jsonb :data, null: false

      t.index ["data"], name: "ix_authors_data", opclass: :jsonb_path_ops, using: :gin
      t.index ["key"], name: "cuix_authors_key", unique: true
    end
  end
end
