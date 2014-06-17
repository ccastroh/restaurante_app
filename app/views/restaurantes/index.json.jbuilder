json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :nombre, :telefono, :tipo
  json.url restaurante_url(restaurante, format: :json)
end
