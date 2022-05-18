class PacientesController < ApplicationController
  def index
    @pacientes = Paciente.all
  end
  def show
    @paciente = Paciente.find(params[:id])
  end

  def new
    @paciente = Paciente.new
    @paciente.build_endereco
  end

  def create
    @paciente = Paciente.new(paciente_params)

    if @paciente.save
      redirect_to @paciente
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @paciente = Paciente.find(params[:id])
  end

  def update
    @paciente= Paciente.find(params[:id])

    if @paciente.update(paciente_params)
      redirect_to @paciente
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.destroy

    redirect_to root_path, status: :see_other
  end


  private
    def paciente_params
      params.require(:paciente).permit(:nome, :idade, :cpf, :fone, endereco_attributes:[:logradouro, :numero, :bairro, :cidade, :estado, :pais, :cep])
    end
end
