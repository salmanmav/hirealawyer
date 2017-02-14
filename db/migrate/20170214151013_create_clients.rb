class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.references :lawyer, foreign_key: true
      t.string :name
      t.string :email
      t.string :password
      t.string :city

      t.timestamps
    end
  end
end
