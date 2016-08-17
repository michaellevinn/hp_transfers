json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :address, :email, :phone, :partner_id
  json.url hotel_url(hotel, format: :json)
end
