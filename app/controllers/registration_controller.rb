class RegistrationController < Devise::RegistrationsController
  protected

  def update_resource(resource,  params)
    resource.update_without_password( params)
  end

  private
  def user_params
    params.require(:article).permit(:name, :text, :lastname, :email)
  end
end
