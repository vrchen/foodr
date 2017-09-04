class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string :upc14
      t.string :upc12
      t.string :brand
    	t.string :name
    	t.integer :score
    	t.string :img_url

      t.timestamps
    end
  end
end
