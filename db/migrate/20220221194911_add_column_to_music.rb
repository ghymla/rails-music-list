class AddColumnToMusic < ActiveRecord::Migration[6.1]
  def change
    add_column :musics, :source, :string
  end
end
