class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :zip_code
      t.integer :user_id

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
