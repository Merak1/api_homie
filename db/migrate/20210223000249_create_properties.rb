class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.text :name
      t.text :description
      t.integer :rental_price
      t.integer :tennant_id

      t.timestamps
    end
  end
end
