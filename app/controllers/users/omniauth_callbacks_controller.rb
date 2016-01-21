class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    render :text => "THINGS ARE BORKED" 
  end

  def action_missing(provider)
    # Set up authentication/authorizations here, and distribute tasks
    # that are provider specific to other methods, leaving only tasks
    # that work across all providers in this method. 
    render :text => "THINGS ARE BORKED, catchall" 
  end

  # def google_oauth2
  #   render :text => "This works, google_oauth2" 
  # end

  def passthru
    render :text => "This works, passthru" 
  end

end