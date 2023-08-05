class JwtFailureApp < Devise::FailureApp
    def respond
        if request.xhr?
            self.status = 401
            self.content_type = 'application/json'
            self.response_body = {error: 'Token expired'}.to_json
        else
            super
        end
    end
end