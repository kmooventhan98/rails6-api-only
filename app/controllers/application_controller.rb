class ApplicationController < ActionController::API
    def render_json(success, message, status)
        render :json => {:success => success, :response => message}, :status => status
    end
end
