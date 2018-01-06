class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	
rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found
	
	protected
	#empty so we can override it in subcontrollers
	def resource_not_dound
	end
end
