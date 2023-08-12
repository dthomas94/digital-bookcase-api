class RemoveWorkTypeColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :works, :type
  end
end
