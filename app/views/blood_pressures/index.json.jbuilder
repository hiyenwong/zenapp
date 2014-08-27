json.array!(@blood_pressures) do |blood_pressure|
  json.extract! blood_pressure, :id, :person_id, :psys, :pdias, :bp_date
  json.url blood_pressure_url(blood_pressure, format: :json)
end
