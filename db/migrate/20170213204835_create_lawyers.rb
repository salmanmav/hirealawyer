class CreateLawyers < ActiveRecord::Migration[5.0]
  def change
    create_table :lawyers do |t|
      t.string :name
      t.string :email
      t.text :address
      t.binary :photo
      t.string :contact
      t.string :password
      t.string :qualification
      t.text :reviews
      t.integer :rating

      t.timestamps
    end
  end
end
