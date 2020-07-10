# frozen_string_literal: true
# rubocop:disable all

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET /new ' do
    it 'redirect page' do
      get :new
      expect(response).to have_http_status(:found)
    end
  end


    it 'creates a post' do
      user = User.create(name: 'hi', email: 'ema@test.com', password: '12345')
      session[:user_id] = user.id
       post :create, params: { post: { message: "hello" } }
      
      expect(Post.find_by(message: 'hello')).to be 
    end
  

  describe 'GET /' do
    it 'responds with 302' do
      get :index
      expect(response).to have_http_status(:found)
    end
  end

  describe 'Delete' do
    it 'Deletes a post' do
      user = User.create(name: 'hi', email: 'ema@test.com', password: '12345')
      session[:user_id] = user.id
      post :create, params: { post: { message: 'Hello, world!' } }
      found_post = Post.find_by(message: 'Hello, world!')
      delete :destroy, params: { id: found_post.id }
      expect(Post.find_by(message: 'Hello, world!')).not_to be 
    end
  end

  describe 'Update' do
    it 'Updates a post' do
      user = User.create(name: 'hi', email: 'ema@test.com', password: '12345')
      session[:user_id] = user.id
      post :create, params: { post: { message: 'Hello, world!' } }
      found_post = Post.find_by(message: 'Hello, world!')
      patch :update, params: { id: found_post.id, post: { message: "I'm updated" } }
      expect(Post.find_by(message: "I'm updated")).to be 
      expect(Post.find_by(message: 'Hello, world!')).not_to be
    end
  end

end

