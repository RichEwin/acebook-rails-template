# frozen_string_literal: true
# rubocop:disable all

require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do
  describe 'Friendship' do
    it 'responds with 302' do
      get :index
      expect(response).to have_http_status(:found)
    end
  end
end 
