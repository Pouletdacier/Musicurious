class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :family
      t.string :tessitura
      t.string :materials
      t.string :origins
      t.string :more_info
      t.string :image
      t.string :audio
      t.string :logo
      t.string :geographical_region
      t.float :instrument_longitude
      t.float :instrument_latitude
      t.string :town

      t.timestamps
    end
  end
end
