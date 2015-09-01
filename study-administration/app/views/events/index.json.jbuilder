json.array!(@events) do |event|
  json.extract! event, :id, :id, :title, :description, :prof, :credits, :sws, :cycle, :next, :exam_type, :condition
  json.url event_url(event, format: :json)
end
