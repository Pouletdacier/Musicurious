namespace :algolia do
  desc "Reindex models with Algolia"
  task :reindex => :environment do
    puts "Reindexing Instruments..."
    Instrument.reindex!
    # Ajoutez d'autres modèles si nécessaire
    puts "Reindexing done."
  end
end
