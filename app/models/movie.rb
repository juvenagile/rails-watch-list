class Movie < ApplicationRecord
  validates :title,  presence: true, uniqueness: true
  validates :overview, presence: true
  has_many :lists, through: :bookmarks
  has_many :bookmarks
end
