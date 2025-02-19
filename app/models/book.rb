class Book < ApplicationRecord
    has_many :borrowings, dependent: :destroy
    
    validates :title, :author, presence: true
    validates :status, inclusion: { in: %w[available borrowed] }
    
    def currently_borrowed?
        status == "borrowed"
    end

    def latest_borrowing
        borrowings.order(created_at: :desc).first
      end
end
