class ApplicationController < ActionController::API
  # Adds cross-site request forgery (CSRF) attack protection.
  protect_from_forgery with: :exception

end
