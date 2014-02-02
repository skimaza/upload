class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :store_request_in_thread

  def store_request_in_thread
  	Thread.current[:request] = request
  end
end
