json.extract! @partner, :id, :name, :legal_name, :legal_address, :inn, :kpp, :account, :bank, :bik, :bank_account, :ceo_title, :ceo_name, :contract_number, :contract_date, :created_at, :updated_at
json.extract! @hotel, :id, :name, :address, :email, :phone, :partner_id, :created_at, :updated_at
