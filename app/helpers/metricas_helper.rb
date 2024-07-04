module MetricasHelper
    def init_hash(tarefas_por_dia)
        dia = Date.today
        while dia >= Date.today.beginning_of_month
            if !tarefas_por_dia.key?(dia)
              tarefas_por_dia[dia] = 0
            end
            dia = dia.prev_day
        end

        tarefas_por_dia
    end
end
