class Song < ActiveRecord::Base
  validates :title, presence: true
  validates_inclusion_of :released, :in => [true, false]
  validates_presence_of :release_year, if: :released?
  validates :release_year, numericality: {less_than: 2019}
  validates :title, uniqueness: true
end
