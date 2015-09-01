json.array!(@blocks) do |block|
  json.extract! block, :id, :name, :gesamtects, :credits_min
  json.url block_url(block, format: :json)
end
