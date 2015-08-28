json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_hash, :first_name, :last_name, :phone_number, :gender, :stinger_count, :password_salt
  json.url user_url(user, format: :json)
end
