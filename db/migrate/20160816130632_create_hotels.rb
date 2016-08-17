class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.references :partner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
