class CreateTourcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :tourcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
