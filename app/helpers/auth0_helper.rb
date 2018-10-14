# This helper is available to other controllers via application_controller.rb
module Auth0Helper
    private

    def user_signed_in?
        session[:userinfo].present?
    end

    # restricts actions to logged in users only
    def authenticate_user!
        if user_signed_in?
            @current_user = build_user
        else
            redirect_to root_path
        end
    end

    def current_user
        @current_user
    end

    # uses email ID to fetch user from DB and add name/avatar to the user object
    def build_user
        # session[:userinfo] is built when login is successful
        user_info = session[:userinfo]["info"]
        email_id = user_info["email"]
        user = User.find_by(email: email_id)
        user.name = user_info["name"]
        user.image = user_info["image"]
        user
    end
end