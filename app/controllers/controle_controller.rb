# encoding: UTF-8
class ControleController < ApplicationController  
  before_filter :authenticate_user!
  
  layout "controle"
  
  def index
  end

end
