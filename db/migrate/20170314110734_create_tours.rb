class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.integer :tourcategory_id
      t.integer :user_id
      t.text :body
      t.text :price

      t.timestamps
    end
  end
end
