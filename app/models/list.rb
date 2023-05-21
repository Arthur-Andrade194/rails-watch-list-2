class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
