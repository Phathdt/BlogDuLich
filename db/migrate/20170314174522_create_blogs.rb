class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.text :title
      t.integer :blogcategory_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
