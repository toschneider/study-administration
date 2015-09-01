json.array!(@blocks) do |block|
  json.extract! block, :id, :name, :gesamtects
  json.url block_url(block, format: :json)
end
