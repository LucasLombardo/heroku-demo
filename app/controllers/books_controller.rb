class BooksController < ApplicationController

  # GET /books
  def index
    @books = Book.all

    render json: @books
  end

  # GET /books/:id
  def show
    @book = Book.find(params[:id])

    render json: @book
  end
end
