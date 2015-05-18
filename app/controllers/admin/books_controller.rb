## Admin::Books controller
##
##

class Admin::BooksController < ApplicationController

  # Get admin/books
  # Currently set root path to this
  def index
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
  end

  # Post admin/books
  def create
  end

  # Get admin/books/:id/edit
  def edit
  end

  # Put admin/books/:id
  def update
  end

end