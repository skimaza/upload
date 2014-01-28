class UploadsController < ApplicationController
	skip_before_filter :verify_authenticity_token, :except => [:update, :create]
	def index
		render :file => 'app\views\upload\new.html.erb'
	end

	def show
	end

	def new
	end

	def uploadFile
		post = Datafile.save(params[:upload])
		render :text => "File has been uploaded successfully"
	end
end
