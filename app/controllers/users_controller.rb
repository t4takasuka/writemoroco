class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(id: "DESC").page(params[:page]).per(5)
  end
end
