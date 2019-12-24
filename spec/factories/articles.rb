FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "My new title #{n}" }
    sequence(:content) { |n| "My new content #{n}" }
    sequence(:slug) { |n| "MY-SLUG-#{n}" }
  end
end
