class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @texts = @user.texts
  end
end
