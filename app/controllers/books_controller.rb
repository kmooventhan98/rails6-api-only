class BooksController < ApplicationController
  def index
    # render :json => "hi", :status => 200
    # render_json(true,"hi",200)
    # render :json => "hi"
    render json: Book.all 
  end
end
