json.extract! contact, :id, :first_name, :last_name, :street_address, :city, :state, :zip_code, :country, :email, :phone, :notes, :created_at, :updated_at
json.url contact_url(contact, format: :json)
