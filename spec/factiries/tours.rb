# frozen_string_literal: true

FactoryBot.define do
  factory :tour do
    tourname { 'tour' }
    tourcontent { 'tourcontent' }
    user
  end
end
