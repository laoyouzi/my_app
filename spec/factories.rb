FactoryGirl.define do

  factory :user, class: 'User' do
    name "xiaoming"
    sequence(:email) {|n| "ming-#{n}@example.com"}
    password_digest "Mystring"
    password "123123123"
  end

  factory :survey, class: 'Survey' do
    name 'mySurvey'
  end

end
