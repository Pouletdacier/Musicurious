class RemoveInstrumentFromAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :answers, :instrument, null: false, foreign_key: true
  end
end
