json.array!(@weight_records) do |weight_record|
  json.extract! weight_record, :id, :person_id, :test_datetime, :weight
  json.url weight_record_url(weight_record, format: :json)
end
