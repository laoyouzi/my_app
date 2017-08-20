require 'rails_helper'

RSpec.describe Survey, :type => :model do
  describe 'return name' do
    before do
      @survey = Survey.new
    end

    it 'reutn mySurvey' do
      name = @survey.name
      expect(name).to eq 'mySurvey'
    end

  end
end
