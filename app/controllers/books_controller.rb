class BooksController < ApplicationController
  def index
    # render :json => "hi", :status => 200
    # render_json(true,"hi",200)
    # render :json => "hi"
    render json: Book.all, status: :ok
  end

  def create
    # to create without assigning any variabls if assigned any variable we can use .errors inbuilt methods on that variables
    # Book.create(title: "Java", author: "Balagurusamy")
    
    # hardcoded
    #book = Book.new(title: "Java", author: "Balagurusamy")
    
    book = Book.new(title: params[:title], author: params[:author])
    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  private
  def book_params
    params.require(:book).permit(:title,:author)
  end
end
