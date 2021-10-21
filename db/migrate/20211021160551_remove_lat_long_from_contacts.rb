class RemoveLatLongFromContacts < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :latitude, :float
    remove_column :contacts, :longitude, :float
  end
end
