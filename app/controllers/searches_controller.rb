class SearchesController < ApplicationController

  def search
    @range = params[:range]
    search = params[:search_method]
    word = params[:search_word]

    if @range == '1'
      @users = User.search(search,word)
      if @users.empty?
        @users = User.all
      end
    else
      @books = Book.search(search,word)
      if @books.empty?
        @books = Book.all
      end
    end
  end
end