class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :doctor
      t.text :address
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
