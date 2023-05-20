class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :list, presence: true
  validates :movie, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, presence: true, length: { minimum: 6 }
end
