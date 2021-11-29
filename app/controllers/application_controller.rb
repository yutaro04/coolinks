class ApplicationController < ActionController::Base
    before_action :basic
    private
    def basic
        authenticate_or_request_with_http_basic do |name, password|
          name == 'infratop' && password == 'infratop3'
        end
    end
end
