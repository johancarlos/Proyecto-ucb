json.extract! contestant, :id, :name, :lastname, :mail, :cellphone, :contest_id, :created_at, :updated_at
json.url contestant_url(contestant, format: :json)
