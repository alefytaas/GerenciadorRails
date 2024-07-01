module TarefasHelper
    def completo(tarefa)
      if tarefa.completo
        return "Completo"
      else
        return "Pendente"
      end
    end

    def calc_prazo(tarefa)
    date_now = Date.today
    prazo = (tarefa.prazo - date_now).to_i
    case prazo
    when  prazo < 0
           "ultrapassado"
    when 1
      " 1 dia"
    when  prazo < 1 && prazo > 0
      "Hoje"
    else
      prazo.to_s + " dias" + " | Data final: " + tarefa.prazo.strftime('%d-%m-%Y')
      
    end
    end
end
