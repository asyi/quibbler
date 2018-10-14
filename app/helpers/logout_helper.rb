module LogoutHelper
    def logout_url
        domain = 'quibbler.auth0.com'
        request_params = {
            returnTo: root_url,
            cliend_id: Rails.application.credentials.auth0[:cliend_id]
        }

        # builds url for logout using different params
        URI:HTTPS.build(
            host: domain,
            path: '/v2/logout',
            query: to_query(request_params)
        )
    end

    private

    # turns request params into query
    def to_query(hash)
        hash.map { |k, v| "#{k}=#{URI.escape(v)}" unless v.nil? }.reject(&:nil?).join('&')
    end

end