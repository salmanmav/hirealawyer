class Lawyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cases
  has_many :clients, through: :cases

  has_many :lawyer_specialities, dependent: :destroy
  has_many :specialities, through: :lawyer_specialities

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  has_attached_file :resume
	validates_attachment :resume, :content_type => { :content_type => %w(application/pdf 	application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

end
