class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  before_action :authenticate_admin!
  protect_from_forgery with: :null_session


end
