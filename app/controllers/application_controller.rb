class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :json_request?
  before_action :authenticate_admin!
  protect_from_forgery with: :null_session

  protected
  def json_request?
    request.format.json?
  end
end
