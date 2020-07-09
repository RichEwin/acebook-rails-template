# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET /new ' do
    it 'redirect page' do
      get :new
      expect(response).to have_http_status(302)
    end
  end

  describe 'POST /' do
    xit 'responds with 200' do
      post :create, params: { post: { message: 'Hello, world!' } }
      expect(response).to redirect_to(posts_url)
    end

    xit 'creates a post' do
      post :create, params: { post: { message: 'Hello, world!' } }
      expect(Post.find_by(message: 'Hello, world!')).to be true
    end
  end

  describe 'GET /' do
    it 'responds with 302' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'Delete' do
    xit 'Deletes a post' do
      post :create, params: { post: { message: 'Hello, world!' } }
      found_post = Post.find_by(message: 'Hello, world!')
      delete :destroy, params: { id: found_post.id }
      expect(Post.find_by(message: 'Hello, world!')).not_to be true
    end
  end

  describe 'Update' do
    xit 'Updates a post' do
      post :create, params: { post: { message: 'Hello, world!' } }
      found_post = Post.find_by(message: 'Hello, world!')
      patch :update, params: { id: found_post.id, post: { message: "I'm updated" } }
      expect(Post.find_by(message: "I'm updated")).to be
      # expect(Post.find_by(message: 'Hello, world!')).not_to be
    end
  end
end
