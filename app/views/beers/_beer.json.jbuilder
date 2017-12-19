json.extract! beer, :id, :name, :fullname, :description, :season, :created_at, :updated_at
json.url beer_url(beer, format: :json)
