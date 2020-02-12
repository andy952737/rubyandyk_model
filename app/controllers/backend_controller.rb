class BackendController < ApplicationController

  before_action :check_admin_login
  before_action :get_system

  def index
    #render json: params
  end
 
  def get_system
    @set_system = System.find(1)
  end

  private
  
  def check_admin_login
    if session[:admin].blank?
      redirect_to backend_session_index_path
      return
    else  
      @admin_login = Admin.find(session[:admin])
    end
  end
end
