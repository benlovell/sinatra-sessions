module Helpers
  def authorise!
    halt 403, 'nope!' unless session[:current_user]
  end
end
