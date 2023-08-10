class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table(:works, primary_key: "key", id: :text, force: :cascade) do |t|
      t.text :type, null: false
      t.integer :revision
      t.date :last_modified, null: false
      t.jsonb :data, null: false

      t.index ["data"], name: "ix_works_data", opclass: :jsonb_path_ops, using: :gin
      t.index ["key"], name: "cuix_works_key", unique: true
    end
  end
end