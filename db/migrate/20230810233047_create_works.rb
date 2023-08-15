class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table(:works, primary_key: "key", id: :text, force: :cascade) do |t|
      t.integer :revision
      t.text :title, null: false
    end
  end
end