class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_action :authenticate_admin!
  protect_from_forgery with: :null_session


end
