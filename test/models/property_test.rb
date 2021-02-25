require "test_helper"

class PropertyTest < ActiveSupport::TestCase

  context 'properties' do
    should belong_to(:tennant).class_name('Tennant')
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:description)
    should validate_presence_of(:rental_price)
    should validate_presence_of(:tennant_id)
    should validate_presence_of(:status)

    should define_enum_for(:status).with_values([:published, :available, :deleted])
  end
end
