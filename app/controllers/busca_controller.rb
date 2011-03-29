# encoding: UTF-8
class BuscaController < ApplicationController
  respond_to :html, :js
  
  def index
  end  
  
  def busca_imoveis
  	cidade = params[:cidade].to_i
  	tipo = params[:tipo].to_i
  	operacao = params[:operacao].to_i
  	
  	puts tipo == 0 && operacao == 0
  	
  	if cidade != 0 && tipo == 0 && operacao == 0 #cidade
	    resultado = Imovel.where('cidade_id = ? and vendido = ?', cidade, false)
	    
	  elsif cidade != 0 && tipo != 0 && operacao == 0 #cidade tipo
	  	resultado = Imovel.where('cidade_id = ? and tipo_id = ? and vendido = ?', cidade, tipo, false)
	  	
   elsif cidade != 0 && tipo == 0 && operacao != 0 #cidade operacao
	  	resultado = Imovel.where('cidade_id = ? and operacao_id = ? and vendido = ?', cidade, operacao, false)
	  	
	  elsif cidade != 0 && tipo != 0 && operacao != 0 #cidade tipo operacao
	  	resultado = Imovel.where('cidade_id = ? and tipo_id = ? and operacao_id = ? and vendido = ?', cidade, tipo, operacao, false)
	  	
	  elsif cidade == 0 && tipo != 0 && operacao == 0 #tipo
    	resultado = Imovel.where('tipo_id = ? and vendido = ?', tipo, false)
    	
    elsif cidade == 0 && tipo != 0 && operacao != 0 #tipo operacao
    	resultado = Imovel.where('tipo_id = ? and operacao_id = ? and vendido = ?', tipo, operacao, false)
    	
    elsif cidade == 0 && tipo == 0 && operacao != 0 #operacao
    	resultado = Imovel.where('operacao_id = ? and vendido = ?', operacao, false)
    
    else
    	resultado = Imovel.where('vendido = ?', false)
    end
    
    @imoveis = resultado.paginate(:page => params[:page], :per_page => 3)
    
    respond_with @imoveis
  end

end
