require "test_helper"

class TennantTest < ActiveSupport::TestCase

  context 'associations' do
    should have_many(:properties).class_name('Property')
  end
  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:email)
    should validate_presence_of(:phone)
    should validate_presence_of(:availability)
  end
end
