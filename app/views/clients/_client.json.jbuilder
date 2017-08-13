json.extract! client, :id, :username, :about, :contact, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
