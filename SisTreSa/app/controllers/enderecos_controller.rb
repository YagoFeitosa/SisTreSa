class EnderecosController < ApplicationController
    
    def index
        @enderecos = Endereco.all
    end

    def show
        @endereco = Endereco.find(params[:id])
    end

    def new
        @endereco = Endereco.new
    end


    def create
        @paciente = Paciente.find(params[:paciente_id])
        @endereco = @paciente.endereco.create(endereco_params)
        redirect_to paciente_path(@paciente)
    end
    
    private
        def endereco_params
            params.require(:endereco).permit(:logradouro, :numero, :bairro, :cidade, :estado, :pais, :cep)
        end
end
