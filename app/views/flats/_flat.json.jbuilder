json.extract! flat, :id, :user_id, :title, :address, :photo, :price, :avaliable, :created_at, :updated_at
json.url flat_url(flat, format: :json)
