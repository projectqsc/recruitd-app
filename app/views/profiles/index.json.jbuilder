json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :email, :location, :phone, :skills, :user_id
  json.url profile_url(profile, format: :json)
end
