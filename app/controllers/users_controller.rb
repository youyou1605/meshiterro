class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @postimages = @user.postimages
  end

  def edit
  end
end
