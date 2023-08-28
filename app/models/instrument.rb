class Instrument < ApplicationRecord
  has_many :favorites, dependent: :destroy
end
