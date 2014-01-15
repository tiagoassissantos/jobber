# encoding: UTF-8
class ImagemController < ApplicationController
  before_filter :authenticate_user!
  skip_before_filter :verify_authenticity_token
  
  layout "controle"
  
  respond_to :html, :js
  
  def new
    arquivo = params[:file]
    imovel = Imovel.find(params[:idImovel])
    
    imagem = Imagem.new
    imagem.arquivo = arquivo
    imagem.nome_arquivo = arquivo.original_filename
    imagem.legenda = params[:legenda]
    imagem.imovel = imovel
    imagem.save!
    
    redirect_to "/imoveis/" + params[:idImovel]
  end
  
  def destroy
    imagem = Imagem.find(params[:id])
    imovel = imagem.imovel
    
    imagem.remove_arquivo
    imagem.destroy
    
    redirect_to "/imoveis/" + imovel.id.to_s
  end
end
