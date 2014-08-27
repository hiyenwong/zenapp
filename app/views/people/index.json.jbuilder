json.array!(@people) do |person|
  json.extract! person, :id, :chinesename, englishname,:birthday, :gender
  json.url person_url(person, format: :json)
end
