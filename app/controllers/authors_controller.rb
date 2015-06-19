class AuthorsController < ApplicationController
  def show
    @author = Author.find_by(id: 1)
  end
end