class ApplicationController < ActionController::Base

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'sign'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to sign_path(current_user)
    end
  end
end