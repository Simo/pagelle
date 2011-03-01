class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find(params[:id])
    @pagelle = List.all
  end

  def new
    @vote = Vote.new
    @pagelle = List.all
  end

  def create
    @vote = Vote.new(params[:vote])
    if @vote.save
      redirect_to @vote, :notice => "Successfully created vote."
    else
      render :action => 'new'
    end
  end

  def edit
    @vote = Vote.find(params[:id])
    @pagelle = List.all
  end

  def update
    @vote = Vote.find(params[:id])
    if @vote.update_attributes(params[:vote])
      redirect_to @vote, :notice  => "Successfully updated vote."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to votes_url, :notice => "Successfully destroyed vote."
  end
end
