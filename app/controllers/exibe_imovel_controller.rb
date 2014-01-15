# encoding: UTF-8
class ExibeImovelController < ApplicationController
  def show
    @imovel = Imovel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @imovel }
    end
  end

end
