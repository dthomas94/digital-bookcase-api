class CreateAuthorWork < ActiveRecord::Migration[7.0]
  def up
    create_table(:author_works, id: false) do |t|
      t.text :author_key, null: false
      t.text :work_key, null: false

      t.index ["author_key"], name: "ix_authorworks_authorkey"
      t.index ["work_key"], name: "ix_authorworks_workkey"
      t.index ["author_key","work_key"], name: "cuix_authorworks_authorkey_workkey", unique: true
    end

    execute "ALTER TABLE author_works ADD PRIMARY KEY (author_key,work_key);"

  end

  def down 
    drop_table(:author_works)
  end
end