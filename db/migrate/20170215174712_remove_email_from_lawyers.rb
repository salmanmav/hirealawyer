class RemoveEmailFromLawyers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lawyers, :email
    remove_column :lawyers, :password
    remove_column :lawyers, :photo
  end
end
