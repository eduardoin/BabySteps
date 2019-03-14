class ChangePicture < ActiveRecord::Migration[5.2]
  def change
    rename_column :kids, :picture, :photo
  end
end
