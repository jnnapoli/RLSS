class Bracket < ApplicationRecord
  validates :champs, :runnerup, :semi1, :semi2, :semi3, :semi4, :presence => true
end
