json.array!(@profiles) do |profile|
  json.extract! profile, :id, :family_name, :name, :email, :birth_date, :bio
  json.url profile_url(profile, format: :json)
end
