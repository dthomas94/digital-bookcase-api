class DropOpenLibraryWorksTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :open_library_works
  end
end
