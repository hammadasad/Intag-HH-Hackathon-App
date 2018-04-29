class CreatePrescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :prescriptions do |t|
      t.string :pharmacy_name
      t.integer :prescription_number
      t.date :fill_date
      t.text :instructions
      t.integer :number_refills_allowed
      t.date :expiration_date
      t.integer :user_id
      t.integer :patient_id
      
      t.timestamps
    end
  end
end
