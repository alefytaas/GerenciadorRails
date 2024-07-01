class Tarefa < ApplicationRecord
    validates :titulo, :prazo, presence: true
end
