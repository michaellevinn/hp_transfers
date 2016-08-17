class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :legal_name
      t.string :legal_address
      t.string :inn
      t.string :kpp
      t.string :account
      t.string :bank
      t.string :bik
      t.string :bank_account
      t.string :ceo_title
      t.string :ceo_name
      t.string :contract_number
      t.date :contract_date

      t.timestamps null: false
    end
  end
end
