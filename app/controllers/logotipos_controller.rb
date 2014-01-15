# encoding: UTF-8
class LogotiposController < ApplicationController
  before_filter :authenticate_admin!
  
  # GET /logotipos
  # GET /logotipos.xml
  def index
    @logotipos = Logotipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @logotipos }
    end
  end

  # GET /logotipos/1
  # GET /logotipos/1.xml
  def show
    @logotipo = Logotipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @logotipo }
    end
  end

  # GET /logotipos/new
  # GET /logotipos/new.xml
  def new
    @logotipo = Logotipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @logotipo }
    end
  end

  # GET /logotipos/1/edit
  def edit
    @logotipo = Logotipo.find(params[:id])
  end

  # POST /logotipos
  # POST /logotipos.xml
  def create
    @logotipo = Logotipo.new(params[:logotipo])

    respond_to do |format|
      if @logotipo.save
        format.html { redirect_to(@logotipo, :notice => 'Logotipo was successfully created.') }
        format.xml  { render :xml => @logotipo, :status => :created, :location => @logotipo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @logotipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /logotipos/1
  # PUT /logotipos/1.xml
  def update
    @logotipo = Logotipo.find(params[:id])

    respond_to do |format|
      if @logotipo.update_attributes(params[:logotipo])
        format.html { redirect_to(@logotipo, :notice => 'Logotipo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @logotipo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logotipos/1
  # DELETE /logotipos/1.xml
  def destroy
    @logotipo = Logotipo.find(params[:id])
    @logotipo.destroy

    respond_to do |format|
      format.html { redirect_to(logotipos_url) }
      format.xml  { head :ok }
    end
  end
end
