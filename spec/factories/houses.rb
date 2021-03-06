FactoryBot.define do
  factory :house do
    rent             { Random.rand 400..1200 }
    deposit          { Random.rand 400..1200 }
    description      { Faker::Lorem.sentence(3, true, 4) }
    available_at     { 3.weeks.after }
    preferred_gender { 0 }
    
    association :user, factory: :user

    trait :either do
      preferred_gender { 0 }
    end

    trait :female do
      preferred_gender { 1 }
    end

    trait :male do
      preferred_gender { 2 }
    end
  end
end
