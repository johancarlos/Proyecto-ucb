json.extract! contact, :id, :area, :name, :email, :cellPhone, :inter, :created_at, :updated_at
json.url contact_url(contact, format: :json)
