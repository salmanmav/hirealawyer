class AddAttributesToLawyers < ActiveRecord::Migration[5.0]
  def change
  	add_column :lawyers, :location, :string

  	add_column :lawyers, :total_cases, :integer
  	add_column :lawyers, :cases_won, :integer
  	add_column :lawyers, :courts, :string
  	add_column :lawyers, :gender, :string
  	add_column :lawyers, :website, :string
  	add_column :lawyers, :bio, :string
  	add_column :lawyers, :speciality, :text
  
  end
end
