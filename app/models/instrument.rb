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

  # def index
  #   @instruments = Instrument.all
  #   if params[:zones]
  #     @instruments = @instruments.where(geographical_zone: params[:zones])
  #   end
  #   if params[:families]
  #     @instruments = @instruments.where(family: params[:families])
  #   end
  # end

  def self.custom_search(query)
    # Get instrument results from Algolia
    instruments_from_algolia = self.search(query, hitsPerPage: 100) # Adjust this number accordingly

    # Extract IDs from the search results
    instrument_ids = instruments_from_algolia.map(&:id)

    # Query the database to get instruments with pictures using the IDs
    instruments_with_pictures = self.includes(:picture_blob).where(id: instrument_ids).where.not(picture_blob: { key: nil })

    instruments_with_pictures
  end


end
