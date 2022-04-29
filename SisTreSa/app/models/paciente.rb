class Paciente < ApplicationRecord
    validates :nome, presence: true
    validates :idade, presence: true, length: { maximum: 3}
    validates :cpf, presence: true, length: { minimum: 11, maximum: 11, }
end
