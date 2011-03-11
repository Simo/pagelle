class HomeController < ApplicationController
	
	def index
		@pagelle = List.all
	end
	
	def pagella
		if params[:id]
			@pagella = List.find(params[:id])
			@voti = @pagella.votes.order(:level_id).reverse
		end
		
		respond_to do |format|
			format.html
			format.js {render :layout => false}
		end
		
	end
	
end
