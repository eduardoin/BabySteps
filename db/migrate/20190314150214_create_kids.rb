class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :name
      t.string :gender
      t.datetime :born_at

      t.timestamps
    end
  end
end
