class AddStreetAddress2ToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :street_address_2, :string
  end
end
