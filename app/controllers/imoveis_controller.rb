# encoding: UTF-8
class ImoveisController < ApplicationController
  respond_to :html, :js
  
  before_filter :authenticate_user!
  
  layout "controle"
  
  # GET /imoveis
  # GET /imoveis.xml
  def index
    #@imoveis = Imovel.paginate(:page => params[:page], :order => 'titulo ASC')
    resultado = Imovel.where('vendido = ?', false)
    @imoveis = resultado.paginate(:page => params[:page], :per_page => 3)
    
    respond_with @imoveis
  end

  # GET /imoveis/1
  # GET /imoveis/1.xml
  def show
    @imovel = Imovel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @imovel }
    end
  end

  # GET /imoveis/new
  # GET /imoveis/new.xml
  def new
    @imovel = Imovel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @imovel }
    end
  end

  # GET /imoveis/1/edit
  def edit
    @imovel = Imovel.find(params[:id])
  end

  # POST /imoveis
  # POST /imoveis.xml
  def create
    @imovel = Imovel.new(params[:imovel])

    respond_to do |format|
      if @imovel.save
        format.html { redirect_to(@imovel, :notice => 'Imovel cadastrado com sucesso.') }
        format.xml  { render :xml => @imovel, :status => :created, :location => @imovel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @imovel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /imoveis/1
  # PUT /imoveis/1.xml
  def update
    @imovel = Imovel.find(params[:id])

    respond_to do |format|
      if @imovel.update_attributes(params[:imovel])
        format.html { redirect_to(@imovel, :notice => 'Imovel atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @imovel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /imoveis/1
  # DELETE /imoveis/1.xml
  def destroy
    @imovel = Imovel.find(params[:id])
    @imovel.destroy

    respond_to do |format|
      format.html { redirect_to(imoveis_url) }
      format.xml  { head :ok }
    end
  end
end
