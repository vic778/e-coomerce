json.extract! instrument, :id, :band, :model, :description, :condition, :finish, :title, :price, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)