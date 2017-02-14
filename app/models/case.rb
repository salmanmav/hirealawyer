class Case < ApplicationRecord
  belongs_to :lawyer
  belongs_to :client
end
