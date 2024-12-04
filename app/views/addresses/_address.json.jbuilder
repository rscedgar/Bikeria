json.extract! address, :id, :client_id, :street, :ext_number, :int_number, :municipality, :city, :postal_code, :address_type, :status, :created_at, :updated_at
json.url address_url(address, format: :json)
