class UsersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page]).per(2)
  end
end
