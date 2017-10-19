class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :Title
      t.text :body

      t.timestamps
    end
  end
end