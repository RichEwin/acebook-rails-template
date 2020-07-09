# frozen_string_literal: true

class FriendshipsController < ApplicationController
  def index
    params[:id] = session[:user_id]
    @current_user = User.find_by(id: session[:user_id])
  end

  def create
    @user_id = session[:user_id]
    left = { 'user_id' => @user_id, 'friend_id' => params[:friend_id], 'confirmed' => TRUE }
    right = { 'user_id' => params[:friend_id], 'friend_id' => @user_id, 'confirmed' => TRUE }
    @friends = Friendship.create(left)
    @friends_inverse = Friendship.create(right)
    redirect_to posts_path
  end
end
