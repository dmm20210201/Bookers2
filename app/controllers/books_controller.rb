class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
    @user = User.find_by(id: current_user.id)
    @book = Book.new
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice: "Book was successfully created."
    else
     @books = Book.all
     render :index
    end
  end

  def edit
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
