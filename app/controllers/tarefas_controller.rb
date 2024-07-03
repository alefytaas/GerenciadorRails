class TarefasController < ApplicationController
  before_action :set_tarefa, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /tarefas or /tarefas.json
  def index
    @tarefas = current_user.tarefas
  end
	
  def por_data
    data = params[:prazo]
    @tarefas = current_user.tarefas.where(prazo: data)
    # Renderiza uma view específica para listar tarefas por data
    render :por_data
  end

  def show
    @tarefa = current_user.tarefas.find(params[:id])
  end

  def new
    @tarefa = Tarefa.new
  end

  def create
    @tarefa = current_user.tarefas.build(tarefa_params)
    if @tarefa.save
      redirect_to tarefas_path, notice: 'Tarefa criada com sucesso.'
    else
      render :new
    end
  end

  def edit
    @tarefa = current_user.tarefas.find(params[:id])
  end

  def update
    @tarefa = current_user.tarefas.find(params[:id])
    if @tarefa.update(tarefa_params)
      redirect_to tarefas_path, notice: 'Tarefa atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @tarefa = current_user.tarefas.find(params[:id])
    @tarefa.destroy
    redirect_to tarefas_path, notice: 'Tarefa excluída com sucesso.'
  end

  private

  def tarefa_params
    params.require(:tarefa).permit(:titulo, :descricao, :completo, :prazo)
  end

    def set_tarefa
      @tarefa = Tarefa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
  
  end