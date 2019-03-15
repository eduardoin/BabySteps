class AddNoteToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :note, :string
  end
end
