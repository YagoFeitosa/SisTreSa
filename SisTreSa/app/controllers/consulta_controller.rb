class ConsultaController < ApplicationController
    def index
        @consulta = Consultum.all
      end
      def show
        @consultum = Consultum.find(params[:id])
      end
    
      def new
        @consultum = Consultum.new
        @consultum.build_medico
        @consultum.build_paciente
        
      end
    
      def create
        @consultum = Consultum.new(consultum_params)
        if @consultum.save
          redirect_to @consultum
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        @consultum = Consultum.find(params[:id])
      end
    
      def update
        @consultum= Consultum.find(params[:id])
    
        if @consultum.update(consultum_params)
          redirect_to @consultum
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      def destroy
        @consultum = Consultum.find(params[:id])
        @consultum.destroy
    
        redirect_to root_path, status: :see_other
      end
    
    
      private
        def consultum_params
          params.require(:consultum).permit(:dataConsulta, medico_attributes:[:nome, :crm, :cpf, :fone, :id], paciente_attributes:[:nome, :idade, :cpf, :fone, endereco_attributes:[:logradouro, :numero, :bairro, :cidade, :estado, :pais, :cep]])
        end
        
end
