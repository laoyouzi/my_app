require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: 'Example User', email: 'user@example.com')
  end

  test 'name should be present' do
    @user.name = ' '
    assert @user.valid?
  end
end
