class AddPictureToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :picture, :string
  end
end
