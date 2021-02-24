class CreateTennants < ActiveRecord::Migration[6.1]
  def change
    create_table :tennants do |t|
      t.text :name
      t.text :email
      t.integer :phone
      t.text :availability

      t.timestamps
    end
  end
end
