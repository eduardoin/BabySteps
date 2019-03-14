class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :type
      t.jsonb :data
      t.datetime :tracked_at

      t.timestamps
    end
  end
end
