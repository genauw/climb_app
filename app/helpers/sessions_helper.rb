module SessionsHelper

  #logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end


  #returns the current logged-in user if there is one
  def current_user?(user)
    #@current_user ||= User.find_by(id: session[:user_id])
    user == current_user
  end

  def current_user

  end

  # Returns true if the user is logged in, otherwise returns false
  def logged_in?
    !current_user.nil?
  end

  # Log out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

end
