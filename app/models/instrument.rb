class Instrument < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers

  has_many_attached :photos
  has_one_attached :picture

  geocoded_by :town
  after_validation :geocode, if: :will_save_change_to_town?

  include AlgoliaSearch

  algoliasearch do
    # liste des attributs que vous souhaitez indexer
    attributes :name, :family

    # (Optionnel) configurations supplémentaires si besoin
    searchableAttributes ['name', 'family']
  end
end
