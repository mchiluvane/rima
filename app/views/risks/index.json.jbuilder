json.array!(@risks) do |risk|
  json.extract! risk, :location_id, :type_id, :description, :from_date, :from_time
  json.url risk_url(risk, format: :json)
end
