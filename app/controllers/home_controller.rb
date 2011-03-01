class HomeController < ApplicationController
	
	def index
		@pagelle = List.all
	end
	
	def pagella
		if params[:id]
			@pagella = List.find(params[:id])
			@voti = @pagella.votes.order(:voto).reverse
		end
		
	end
	
end
