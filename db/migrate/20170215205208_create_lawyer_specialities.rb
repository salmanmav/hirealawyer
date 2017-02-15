class CreateLawyerSpecialities < ActiveRecord::Migration[5.0]
  def change
    create_table :lawyer_specialities do |t|
      t.integer :lawyer_id
      t.integer :speciality_id

      t.timestamps
    end
  end
end
