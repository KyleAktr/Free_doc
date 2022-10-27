class Specialty < ApplicationRecord
    has_many :docspecials
    has_many :doctors, through: :docspecials
end
