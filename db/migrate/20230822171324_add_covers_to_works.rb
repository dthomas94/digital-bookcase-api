class AddCoversToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :covers, :json
  end
end