require 'rails_helper'

RSpec.describe User, :type => :model do
 
  describe 'my first test' do

    before do
      @user = User.new
    end

    it 'the name should return xiaoming' do
      name = @user.name
      expect(name).to eq 'xiaoming'
    end

  end

end
