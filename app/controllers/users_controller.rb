# encoding: UTF-8
class UsersController < ApplicationController
  layout "controle"
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
