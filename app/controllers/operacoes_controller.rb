# encoding: UTF-8
class OperacoesController < ApplicationController
  before_filter :authenticate_user!
  
  layout "controle"
  
  # GET /operacoes
  # GET /operacoes.xml
  def index
    @operacoes = Operacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @operacoes }
    end
  end

  # GET /operacoes/1
  # GET /operacoes/1.xml
  def show
    @operacao = Operacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @operacao }
    end
  end

  # GET /operacoes/new
  # GET /operacoes/new.xml
  def new
    @operacao = Operacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @operacao }
    end
  end

  # GET /operacoes/1/edit
  def edit
    @operacao = Operacao.find(params[:id])
  end

  # POST /operacoes
  # POST /operacoes.xml
  def create
    @operacao = Operacao.new(params[:operacao])

    respond_to do |format|
      if @operacao.save
        format.html { redirect_to(@operacao, :notice => 'Operacao was successfully created.') }
        format.xml  { render :xml => @operacao, :status => :created, :location => @operacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @operacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /operacoes/1
  # PUT /operacoes/1.xml
  def update
    @operacao = Operacao.find(params[:id])

    respond_to do |format|
      if @operacao.update_attributes(params[:operacao])
        format.html { redirect_to(@operacao, :notice => 'Operacao was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @operacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /operacoes/1
  # DELETE /operacoes/1.xml
  def destroy
    @operacao = Operacao.find(params[:id])
    @operacao.destroy

    respond_to do |format|
      format.html { redirect_to(operacoes_url) }
      format.xml  { head :ok }
    end
  end
end
