class RenameTitleToTitle < ActiveRecord::Migration[5.1]
  def change
    rename_column :blogs, :Title, :title
  end
end
