class Shelf < ApplicationRecord
  # Creates different types of shelves
  enum place: [:wishlist,:bought, :reading, :done]
  belongs_to :user
  belongs_to :book
  # Allows for a book to only be on one shelf at a time, per user
  validates :user_id, uniqueness: { scope: :book_id }
  # Allows for filtering shelves by user
  scope :by_user, ->(user) { where(user_id: user) }
end
