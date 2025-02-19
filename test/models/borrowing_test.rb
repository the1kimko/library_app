require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  def setup
    @book = Book.create(title: "1984", author: "George Orwell", status: "available")
  end

  test "should be valid with a borrower name and borrowed_at" do
    borrowing = Borrowing.new(book: @book, borrower_name: "Alice", borrowed_at: Time.now)
    assert borrowing.valid?
  end

  test "should be invalid without a borrower name" do
    borrowing = Borrowing.new(book: @book, borrowed_at: Time.now)
    assert_not borrowing.valid?, "Saved borrowing record without borrower name"
  end
end

