class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.references :lawyer, foreign_key: true
      t.references :client, foreign_key: true
      t.string :casetype
      t.text :detail
      t.string :status

      t.timestamps
    end
  end
end
