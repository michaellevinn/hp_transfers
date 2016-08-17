json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :legal_name, :legal_address, :inn, :kpp, :account, :bank, :bik, :bank_account, :ceo_title, :ceo_name, :contract_number, :contract_date
  json.url partner_url(partner, format: :json)
end
