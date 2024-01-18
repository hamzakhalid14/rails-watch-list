class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
  validates :movie, uniqueness: { scope: :list, message: "has already been bookmarked in this list" }
end
