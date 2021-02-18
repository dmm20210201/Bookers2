class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.find_by(id: current_user.id)
    @book = Book.new
  end

  def show

  end

  def edit
    @user = User.find(params[:id])
  end
end
