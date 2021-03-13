FactoryBot.define do
  factory :user do
    birthdate { Date.current.strftime('%Y-%m-%d') }
  end
end
