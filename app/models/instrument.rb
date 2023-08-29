class Instrument < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many_attached :photos
end
