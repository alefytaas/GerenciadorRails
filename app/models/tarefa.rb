class Tarefa < ApplicationRecord
    validates :titulo, :prazo, presence: true
    belongs_to :user
end
