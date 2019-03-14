class AddDefaultValueToData < ActiveRecord::Migration[5.2]
  def change
    change_column :episodes, :data, :jsonb, default: {}
  end
end
