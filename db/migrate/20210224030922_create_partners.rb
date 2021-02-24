class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.text :name
      t.text :token

      t.timestamps
    end
  end
end
