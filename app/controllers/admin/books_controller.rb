## Admin::Books controller
##
##

class Admin::BooksController < ApplicationController

  # Get admin/books
  # Currently set root path to this
  def index
    @books = Book.all

  end

  # Get admin/books/:id
  def show
    # @book = Book.where(id: params[:id]).first
    # respond_to do |format|
    #   format.html { render 'show' }
    # end
  end

  # Get admin/books/new
  def new
    @book = Book.new
  end

  # Post admin/books.json
  def create
    @book = Book.new(params.require(:book).permit(:name, :isbn, :author_ids))

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'User was successfully created.' }
        # format.json { render :show, status: :created, location: @user }
      else
        format.html { render 'admin/books/new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  # Get admin/books/:id/edit
  def edit
  end

  # Put admin/books/:id
  def update
  end

end