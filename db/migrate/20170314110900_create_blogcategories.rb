class CreateBlogcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :blogcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
