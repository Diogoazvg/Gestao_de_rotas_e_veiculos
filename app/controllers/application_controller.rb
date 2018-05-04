class ApplicationController < ActionController::Base
  before_action :authenticate_usuario!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :funcao, :tipo, :nascimento, :perfil, :cnh])
  end

  def after_sign_in_path_for(resource)
    index2_path
  end
end
