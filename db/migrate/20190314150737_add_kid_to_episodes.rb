class AddKidToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_reference :episodes, :kid, foreign_key: true
  end
end
