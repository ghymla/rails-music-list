class RemoveYearToMusic < ActiveRecord::Migration[6.1]
  def change
    remove_column :musics, :year
  end
end
