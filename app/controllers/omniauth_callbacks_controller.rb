class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # def all
  #   user =  User.from_omniauth(request.env["omniauth.auth"])
  #   if user.persisted?
  #     sign_in_and_redirect user, notice: "Signed in!"
  #   else
  #     session["devise.user_attributes"] = user.attributes
  #     redirect_to new_user_registration_url
  #   end
  # end

  # alias_method :twitter, :facebook
   def self.provides_callback_for(provider)
    class_eval %Q{
      def #{provider}
        @user = User.find_for_oauth(env["omniauth.auth"], current_user)

        if @user.persisted?
          sign_in_and_redirect @user, event: :authentication
          set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
        else
          session["devise.user_attributes"] = user.attributes
          redirect_to new_user_registration_url
        end
      end
    }
  end

  [:twitter, :facebook, :google_oauth2, :instagram].each do |provider|
    provides_callback_for provider
  end

  # def google_oauth2

  #   @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)

  #   if @user.persisted?
  #     flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
  #     sign_in_and_redirect @user, :event => :authentication
  #   else
  #     session["devise.google_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end

  # def after_sign_in_path_for(resource)
  #   if resource.email_verified?
  #     super resource
  #   else
  #     finish_signup_path(resource)
  #   end
  # end
end

  # def facebook
  #   # You need to implement the method below in your model (e.g. app/models/user.rb)
  #   @user = User.from_omniauth(request.env["omniauth.auth"])

  #   if request.env["omniauth.auth"].info.email.blank?
  #     redirect_to "/users/auth/facebook?auth_type=rerequest&scope=email"
  #   end

  #   if @user.persisted?
  #     sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
  #     set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end
# end