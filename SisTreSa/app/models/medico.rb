class Medico < ApplicationRecord
    validates :nome, presence: true
    validates :crm, presence: true, length: { minimum: 6, maximum: 12}
    validates :cpf, presence: true, length: { minimum: 11, maximum: 11, }
    validates :fone, presence: true, length: { minimum: 9, maximum: 11, }
    
    has_many :consultum
    
    validates_cpf_format_of :cpf, presence: { message: "CPF inválido"}
end

