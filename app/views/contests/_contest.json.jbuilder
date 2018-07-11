json.extract! contest, :id, :name, :description, :type, :date_start, :date_end, :award, :contest_score, :contest_winner, :created_at, :updated_at
json.url contest_url(contest, format: :json)
