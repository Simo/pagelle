class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    if @list.save
    	@pagelle = List.all
      respond_to do |format|
        format.html {redirect_to root_path, :notice => 'Pagella creata'}
        format.js
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(params[:list])
      @pagelle = List.all
      respond_to do |format|
    	format.html {redirect_to root_path, :notice => 'Pagella aggiornata'}
    	format.js {render :layout => false}
      end
    else
      render :action => 'edit'
    end
    
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_url, :notice => "Pagella cancellata."
  end
end
