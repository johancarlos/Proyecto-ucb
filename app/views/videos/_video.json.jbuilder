json.extract! video, :id, :title, :link, :album_id, :created_at, :updated_at
json.url video_url(video, format: :json)
