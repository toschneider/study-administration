json.array!(@blocks) do |block|
<<<<<<< HEAD
  json.extract! block, :id, :name, :gesamtects
=======
  json.extract! block, :id, :name, :credits_min
>>>>>>> d62b09217e1b6234e79f306f41a787e393fc09b9
  json.url block_url(block, format: :json)
end
