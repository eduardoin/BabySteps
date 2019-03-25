class AddTokenToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :token, :string
  end
end
