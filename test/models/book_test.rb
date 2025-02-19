require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should be valid with title and author" do
    book = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien", status: "available")
    assert book.valid?
  end

  test "should be invalid without a title" do
    book = Book.new(author: "Unknown Author", status: "available")
    assert_not book.valid?, "Saved the book without a title"
  end

  test "should be invalid without an author" do
    book = Book.new(title: "Some Book", status: "available")
    assert_not book.valid?, "Saved the book without an author"
  end
end

