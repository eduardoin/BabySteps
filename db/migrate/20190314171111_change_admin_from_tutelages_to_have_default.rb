class ChangeAdminFromTutelagesToHaveDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :tutelages, :admin, :boolean, default: false, null: false
  end
end
