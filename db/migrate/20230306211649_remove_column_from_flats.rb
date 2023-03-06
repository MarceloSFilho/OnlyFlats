class RemoveColumnFromFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :photo
  end
end
