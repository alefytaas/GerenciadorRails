class MetricasController < ApplicationController
    include MetricasHelper
    def index
# Permite apenas os parâmetros necessários


data_inicial_params = params[:data_inicial].permit(:'1i', :'2i', :'3i') if params[:data_inicial].present?

# Cria a data inicial com base nos parâmetros ou no primeiro dia do mês atual
data_inicial = if data_inicial_params.present?
                 Date.new(
                   data_inicial_params[:'1i'].to_i,
                   data_inicial_params[:'2i'].to_i,
                   data_inicial_params[:'3i'].to_i
                 )
               else
                 data_inicial = Date.today.beginning_of_month
               end
# Consulta as tarefas por dia, contando quantas foram criadas
tarefas_por_dia = current_user.tarefas.where('created_at >= ?', data_inicial).group_by_day(:created_at).count
        dados_hash = init_hash(tarefas_por_dia)
@dados_grafico = dados_hash.map { |data, quantidade| [data.strftime('%m/%d/%Y'), quantidade] }
    end
end
