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

  # POST /books/:id
  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH /books/:id
  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/:id
  def destroy
    @book = Book.find(params[:id])

    @book.destroy
  end

  # permitted parameters
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
