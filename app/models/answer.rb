class Answer < ApplicationRecord
  belongs_to :instrument
  belongs_to :question
end
