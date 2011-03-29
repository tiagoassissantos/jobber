# encoding: UTF-8
class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    #@imoveis = Imovel.paginate(:page => params[:page], :order => 'titulo ASC')
    resultado = Imovel.where('vendido = ?', false)
    @imoveis = resultado.paginate(:page => params[:page], :per_page => 3)
    
    respond_with @imoveis
  end

end
