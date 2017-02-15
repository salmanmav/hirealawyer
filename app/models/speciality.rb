class Speciality < ApplicationRecord
	has_many :lawyer_specialities, dependent: :destroy
  has_many :lawyers, through: :lawyer_specialities
end
