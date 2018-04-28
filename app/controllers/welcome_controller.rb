class WelcomeController < ActionController::Base
  def index
    # if !user_signed_in?
      render template:'welcome/index'
    # else
    #   #flash[:error] = "Você precisa sair para voltar para a página principal"
    #   redirect_to travels_path
    # end
  end
end