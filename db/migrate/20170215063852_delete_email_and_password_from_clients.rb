class DeleteEmailAndPasswordFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :email
    remove_column :clients, :password
  end
end
