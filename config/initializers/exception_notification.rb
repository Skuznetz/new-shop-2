if Rails.env == "production" || Rails.env == "staging" || Rails.env == "development"
	# exceptions = []
	# exceptions << 'ActiveRecord::RecordNotFound'
 #    exceptions << 'AbstractController::ActionNotFound'
	# exceptions << 'ActionController::RoutingError'
	# exceptions << 'ActionController::InvalidAuthenticityToken'

	# server_name = case Rails.env
	#   when "production"              then "newshop2.com"
	#   when  "staging"                then "staging.newshop2.com"
	#   when "development"             then "DEVELOPMENT newshop2"
	# else 
	#   "unknown env newshop2" 

	#   Newshop2::Application.config.middleware.use ExceptionNotification::
	#   Rack,
	#        email:{
	#        	email_prefix: "[#{server_name} error]",
	#        	sender_address:"error 500@newshop2.com",
	#        	exception_recipients: ["s.kuznetzov@mail.ru"]
	#        },
	#        ignore_exceptions: exceptions 
end