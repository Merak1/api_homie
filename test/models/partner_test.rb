require "test_helper"

class PartnerTest < ActiveSupport::TestCase

  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:token)

    should_not allow_value(" some name").for(:name)
    should_not allow_value(" some token").for(:token)
  end
end
