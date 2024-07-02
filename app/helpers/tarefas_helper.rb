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
    case
    when prazo < 0
      "Prazo esgotado em #{prazo.abs} dias"
    when prazo == 0
      "Hoje"
    when prazo == 1
      "1 dia"
    else
      "#{prazo} dias | Data final: #{tarefa.prazo.strftime('%d-%m-%Y')}"
    end
    end

  
end
