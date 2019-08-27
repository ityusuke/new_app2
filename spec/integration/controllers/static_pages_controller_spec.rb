# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe 'static_pages test' do
    it 'home http is success' do
      get :home
      expect(response).to have_http_status(:success)
    end
    it 'about http is success' do
      get :about
      expect(response).to have_http_status(:success)
    end
  end
end
