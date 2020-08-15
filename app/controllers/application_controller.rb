class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized, unless: :devise_controller?

  private

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || recipes_path
  end
end
