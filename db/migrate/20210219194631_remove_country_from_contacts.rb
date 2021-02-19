class RemoveCountryFromContacts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :country, :string
  end
end
