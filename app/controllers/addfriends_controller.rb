class AddfriendsController < ApplicationController
  def index
  # pull data from database
  params[:id] = session[:user_id]
  @username = User.find_by(id:  session[:user_id])
  end

end
