# encoding: UTF-8
class ContatoController < ApplicationController
  respond_to :html, :js
  
  def index
    @empresa = Empresa.first
    
    respond_with @empresa
  end

  def envia
    dados = Hash.new
    dados[:nome] = params["nome"]
    dados[:email] = params["email"]
    dados[:telefone] = params["telefone"]
    dados[:assunto] = params["assunto"]
    dados[:mensagem] = params["mensagem"]
    
    Contato.enviar_email(dados).deliver
  end
end
