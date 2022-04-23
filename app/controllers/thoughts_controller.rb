class ThoughtsController < ApplicationController

	def show
		@thought = Thought.find(params[:id])
	end


end