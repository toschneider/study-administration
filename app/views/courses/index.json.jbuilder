json.array!(@courses) do |course|
  json.extract! course, :id, :degree, :name
  json.url course_url(course, format: :json)
end
