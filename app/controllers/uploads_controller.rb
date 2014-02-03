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
		post = Log.save(params[:upload])
		if post
			render :text => "Log has been uploaded successfully"
		else
			render :text => "Upload failed"
		end
	end
end
