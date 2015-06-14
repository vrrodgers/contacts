class RemoveAddressFromContacts < ActiveRecord::Migration
  def change
  remove_column :contacts, :address, :string 
  end
end
