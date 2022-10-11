class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit
  #after_action :verify_authorized, except: :index
  #after_action :verify_policy_scoped, only: :index
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastName, :confirmed_at, :unconfirmed_email, :actable_id, :actable_type])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastName, :actable_id, :actable_type])
  end


  private


  def user_not_authorized (exception)
    #flash[:alert] = "You are not authorized to perform this action."
    #redirect_to(request.referrer || root_path)
    policy = exception.policy
    policy_name = exception.policy.class.to_s.underscore

    error_key = if policy.respond_to?(:policy_error_key) && policy.policy_error_key
                  policy.policy_error_message
                else
                  exception.query
                end

    flash[:error] = t("#{policy_name}.#{error_key}", scope: "pundit", default: :default)
    #flash[:error] = t("#{policy_name}.#{error_key}", scope: "pundit", default: :default)

    redirect_to(request.referrer || root_path)
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ?
        parsed_locale.to_sym :
        nil
  end
  end

