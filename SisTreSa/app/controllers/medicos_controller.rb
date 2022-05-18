class MedicosController < ApplicationController
  def index
    @medico = Medico.all
  end
  def show
    @medico = Medico.find(params[:id])
  end

  def new
    @medico = Medico.new
  end

  def create
    @medico = Medico.new(medico_params)

    if @medico.save
      redirect_to @medico
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @medico = Medico.find(params[:id])
  end

  def update
    @medico = Medico.find(params[:id])

    if @medico.update(medico_params)
      redirect_to @medico
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @medico = Medico.find(params[:id])
    @medico.destroy

    redirect_to root_path, status: :see_other
  end


  private
    def medico_params
      params.require(:medico).permit(:nome, :crm, :cpf, :fone)
    end
end
