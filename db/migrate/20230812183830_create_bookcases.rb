class CreateBookcases < ActiveRecord::Migration[7.0]
  def change
    create_table :bookcases do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      

      t.string :name, null: false
      t.string :work_keys, array: true

      t.timestamps
    end
  end
end
