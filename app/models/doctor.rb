class Doctor < ApplicationRecord
    belongs_to :city
    has_many :docspecials
    has_many :specialties, through: :docspecials
    has_many :appointments
    has_many :patients, through: :appointments
end
