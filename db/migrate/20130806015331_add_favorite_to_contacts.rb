class AddFavoriteToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :favorite, :string
  end
end
