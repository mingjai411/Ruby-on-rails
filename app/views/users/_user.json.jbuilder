json.extract! user, :id, :first_name, :last_name, :ages, :gender, :address
json.url user_url(user, format: :json)