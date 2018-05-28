class AddApartmentNumberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :apartment_number, :string
  end
end
