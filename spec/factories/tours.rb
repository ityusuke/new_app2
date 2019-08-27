# frozen_string_literal: true

FactoryBot.define do
  factory :tour do
    tourname { 'MyString' }
    tourcontent { 'MyText' }
    user { nil }
  end
end
