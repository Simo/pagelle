class VotesController < ApplicationController
	before_filter :genera_dati, :only => [:show, :edit]
	
	def genera_dati
		@vote = Vote.find(params[:id])
    	@pagelle = List.all
    	@livelli = Level.all
	end	
	
  def index
    @votes = Vote.all
  end

  def show

  end

  def new
    @vote = Vote.new
    @vote.list_id = params[:list_id]
    
    @pagelle = List.all
    @livelli = Level.all
  end

  def create
    @vote = Vote.new(params[:vote])
    if @vote.save
    	@voti = Vote.where(:list_id => params[:vote][:list_id]).order(:level_id).reverse
    	respond_to do |format|
    		format.html {redirect_to pagella_path(params[:vote][:list_id]), :notice => "Nuovo voto inserito"}
    		format.js
    	end
    else
      render :action => 'new'
    end
  end

  def edit

  end

  def update
    @vote = Vote.find(params[:id])
    if @vote.update_attributes(params[:vote])
    	@voti = Vote.where(:list_id => params[:vote][:list_id]).order(:level_id).reverse
    	respond_to do |format|
    		format.html {redirect_to pagella_path(params[:vote][:list_id]), :notice => "Voto aggiornato"}
    		format.js
    	end
    else
    	render :action => 'edit'
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to votes_url, :notice => "Voto cancellato."
  end
end
