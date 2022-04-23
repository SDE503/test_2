class ThoughtsController < ApplicationController

	def show
		@thought = Thought.find(params[:id])
	end
	
	def index
		@thoughts = Thought.all
	end


end