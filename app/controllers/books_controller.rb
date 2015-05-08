## Books controller
##
##

class BooksController < ApplicationController

  # Get /books
  # Currently set root path to this
  def index
  end

  # Get /books/:id
  def show
    @book = Book.where(id: params[:id]).first
  end

end