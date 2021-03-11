class CreateFastorders < ActiveRecord::Migration[6.1]
  def change
    create_table :fastorders do |t|
      t.string :product_name
      t.integer :quantity
      t.string :address
      t.string :phone
      t.string :zip_code
      t.date :date

      t.timestamps
    end
  end
end
