# encoding: utf-8
class SobreController < ApplicationController
  respond_to :html, :js
  
  before_filter :authenticate_admin!, :only => [:editar]
  
  def index
  end
  
  def editar
    @arquivo_sobre = File.readlines('app/views/sobre/index.html.erb').to_s
    
    @arquivo_sobre = @arquivo_sobre.gsub('\n', ' ')
    @arquivo_sobre = @arquivo_sobre.gsub('"]', '')
    @arquivo_sobre = @arquivo_sobre.gsub('["', '')
    @arquivo_sobre = @arquivo_sobre.gsub('\r', '')
    @arquivo_sobre = @arquivo_sobre.gsub('", "', '')
    
    respond_with @arquivo_sobre
  end
  
  def atualizar
    pagina = params[:pagina_sobre]
    
    puts pagina
    
    arquivo = File.new('app/views/sobre/index.html.erb', 'w')
    arquivo.puts pagina
    arquivo.close
    
    redirect_to '/sobre/index'
  end
end
