class Favorite < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  # validates :user_id, :instrument_id, uniqueness: true
end
