class CreateTutelages < ActiveRecord::Migration[5.2]
  def change
    create_table :tutelages do |t|
      t.references :kid, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
