## Books controller
##
##

class BooksController < ApplicationController

  before_filter :set_book, only: [:show, :new]

  # Get /books
  # Currently set root path to this
  def index

    respond_to do |format|
      format.html
      format.json { render :json => {books: Book.all.to_json}, status: :ok}
    end

  end

  # Get /books/:id
  def show
    # byebug

    @authors = @book.authors

    @categories = Category.all

    respond_to do |format|
      format.html { render 'show'}
      # format.html { redirect_to books_path}
      format.json { render :json => { book: @book }, status: :ok }
    end

  end

  def new
    @book = Book.new()    
  end

  def create
    @book = Book.create(books_param)
    redirect_to root_path
  end

  private

  def books_param
    params.require(:book).permit(:name, :image)
  end

  def set_book
    @book = Book.where(id: params[:id]).first
  end
end
