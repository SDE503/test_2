class ThoughtsController < ApplicationController
	before_action :set_thought, only: [:show, :edit, :update, :destroy]

	def show
		
	end
	
	def index
		@thoughts = Thought.all
	end
	
	def new
		@thought = Thought.new
	end
	
	def edit 
	
	end
	
	def create
		@thought = Thought.new(thought_params)
		@thought.user = User.first
		if @thought.save
			flash[:notice] = 'Thought was created successfully!'
			redirect_to @thought
		else
			render 'new'
		end			
	end
	
	def update
		if @thought.update(thought_params    )
			flash[:notice] = "Thought was succesfully updated."
			redirect_to @thought
		else
			render 'edit'
		end
	end
	
	def destroy
		@thought.destroy
			flash[:notice] = "Thought was successfully deleted!"
		redirect_to thoughts_path
	end 
	
	private
	
		def set_thought
			@thought = Thought.find(params[:id])
		end
		
		def thought_params
			params.require(:thought).permit(:title, :description)
		end


end