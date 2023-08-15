class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table(:authors, primary_key: "key", id: :text, force: :cascade) do |t|
      t.text :name, null: false
      t.json :links
    end
  end
end
