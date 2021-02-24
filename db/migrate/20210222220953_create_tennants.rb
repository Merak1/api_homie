class CreateTennants < ActiveRecord::Migration[6.1]
  def change
    create_table :tennants do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :availability

      t.timestamps
    end
  end
end
