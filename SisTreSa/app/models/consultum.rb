class Consultum < ApplicationRecord
    belongs_to :paciente
    belongs_to :medico
    accepts_nested_attributes_for :paciente
    accepts_nested_attributes_for :medico
end
