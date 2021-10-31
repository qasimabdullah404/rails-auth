class ApplicationController < ActionController::Base
    before_action :config_permitted_params, if: :devise_controller?

    rescue_from CanCan::AccessDenied do
        flash[:error] = 'Access denied!'
        redirect_to root_url
      end
      
    protected
    def config_permitted_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
