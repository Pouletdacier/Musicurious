class Instrument < ApplicationRecord
  has_many :favorites, dependent: :destroy

  has_many_attached :photos
  has_one_attached :picture
  geocoded_by :town
  after_validation :geocode, if: :will_save_change_to_town?

end
