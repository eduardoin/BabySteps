class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.string :type
      t.float :value
      t.datetime :measured_at
      t.references :kid, foreign_key: true

      t.timestamps
    end
  end
end
