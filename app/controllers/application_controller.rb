class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_filter :set_user_time_zone

  private

  def set_user_time_zone

  end




end
