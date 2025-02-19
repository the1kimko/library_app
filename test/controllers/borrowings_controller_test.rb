require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create(title: "1984", author: "George Orwell", status: "available")
    @borrowing = Borrowing.create(book: @book, borrower_name: "Alice", borrowed_at: Time.now)
  end

  test "should create borrowing" do
    assert_difference("Borrowing.count") do
      post book_borrowings_url(@book), params: { borrowing: { borrower_name: "Bob" } }  
    end
    assert_redirected_to book_url(@book)
  end

  test "should update borrowing (return book)" do
    patch book_borrowing_url(@book, @borrowing)  
    assert_redirected_to book_url(@book)
  end
end
