module SessionHelper
    # Manages state when application redirects to Auth0 and comes back with info
    def get_state
        state = SecureRandom.hex(24)
        session['omniauth.state'] = state
        state
    end
end