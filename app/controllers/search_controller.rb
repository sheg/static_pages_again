class SearchController < ApplicationController

  def index
    @user = User.find_by(:email => params[:email])
    unless @user
      flash[:error] = "Could not locate #{params[:email]}"
      redirect_to new_search_path
    end
  end

  def new
  end
end