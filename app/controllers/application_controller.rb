class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :not_destroyed
    def render_json(success, message, status)
        render :json => {:success => success, :response => message}, :status => status
    end


    private 
    def not_destroyed(e)
        render json: {errors: e}, status: :unprocessable_entity
    end
end
