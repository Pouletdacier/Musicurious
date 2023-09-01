class AddYoutubeEmbedUrlToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :youtube_embed_url, :string
  end
end
