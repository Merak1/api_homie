class AddStatusToProperty < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :status, :integer , default: 0 
  end
end
