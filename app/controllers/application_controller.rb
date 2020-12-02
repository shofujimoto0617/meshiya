class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
  	admin_homes_top_path
  end

  def after_sign_out_path_for(resource)
  	new_admin_seesion_path
  end
end
