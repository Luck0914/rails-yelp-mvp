class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.text :content
      t.refrences :restaurant

      t.timestamps
    end
  end
end
