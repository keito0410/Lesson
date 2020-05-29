class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @books = Book.all
    @book = current_user.books.new(book_params)
    if @book.save
      redirect_to books_path
      flash[:notice] = "successfully"
    else
      render 'edit'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

def book_params
  params.require(:book).permit(:title, :body)
end

end
