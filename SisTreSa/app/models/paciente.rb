class Paciente < ApplicationRecord
    #has_many :laudos, class_name: "laudo", foreign_key: "reference_id"
    has_one :endereco

    validates :nome, presence: true
    validates :idade, presence: true, length: { maximum: 3}
    validates :cpf, presence: true, length: { minimum: 11, maximum: 11, }
    validates :fone, presence: true, length: { minimum: 9, maximum: 11, }
end
