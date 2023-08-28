class ModifyLongLatNamesInInstruments < ActiveRecord::Migration[7.0]
  def change
    rename_column :instruments, :instrument_longitude, :longitude
    rename_column :instruments, :instrument_latitude, :latitude
  end
end
