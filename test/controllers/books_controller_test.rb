require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create(title: "Harry Potter", author: "J.K. Rowling", status: "available")
  end

  test "should get index" do
    get books_url  
    assert_response :success
  end

  test "should show book" do
    get book_url(@book)  
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { title: "New Book", author: "John Doe", status: "available" } }
    end
    assert_redirected_to book_url(Book.last)
  end

  test "should get edit" do
    get edit_book_url(@book)  
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { title: "Updated Title" } }  
    assert_redirected_to book_url(@book)
  end

  test "should delete book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)  
    end
    assert_redirected_to books_url
  end
end
