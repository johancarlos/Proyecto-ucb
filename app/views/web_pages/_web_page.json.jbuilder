json.extract! web_page, :id, :name, :link, :image, :created_at, :updated_at
json.url web_page_url(web_page, format: :json)
