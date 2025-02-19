class BorrowingsController < ApplicationController
  before_action :set_book, only: [:create, :update]

  def create
    @borrowing = @book.borrowings.new(borrowing_params.merge(borrowed_at: Time.now))

    if @borrowing.save
      @book.update(status: "borrowed")
      redirect_to @book, notice: "Book borrowed successfully."
    else
      redirect_to @book, alert: "Failed to borrow the book."
    end
  end

  def update
    @borrowing = @book.borrowings.where(returned_at: nil).last
    if @borrowing
      @borrowing.update(returned_at: Time.now)
      @book.update(status: "available")
      redirect_to @book, notice: "Book returned successfully."
    else
      redirect_to @book, alert: "No active borrowing found."
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def borrowing_params
    params.require(:borrowing).permit(:borrower_name)
  end
end

