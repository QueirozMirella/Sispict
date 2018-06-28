# frozen_string_literal: true

module Backoffice
  class UsuariosController < AdminApplication
    before_action :set_usuario, only: [:show, :edit, :update]

    def index
      @usuarios = Usuario.all
      authorize @usuarios
    end

    def show; end

    def edit
      @usuario.build_cpf
      @usuario.build_curriculo
      @usuario.build_identidade
      authorize @usuario
    end

    def update
      authorize @usuario
      password = params[:usuario].delete(:password) if params[:usuario][:password].blank?
      password_confirmation = params[:usuario].delete(:password_confirmation) if params[:usuario][:password_confirmation].blank?

      return false unless password && password_confirmation
      if @usuario.update_attributes(usuario_params)
        update_roles
        flash[:notice] = 'Usuário atualizado com sucesso.'
        redirect_to [:backoffice, @usuario]
      else
        render :edit
      end
    end

    private

    def remove_all_roles
      Role::OPTIONS.each do |role|
        @usuario.remove_role(role)
      end
    end

    def update_roles
      remove_all_roles
      roles = params[:usuario].extract!(:role_ids)
      roles[:role_ids].each do |role|
        @usuario.add_role(role)
      end
    end

    def usuario_params
      params.require(:usuario).permit(:nome, :sobrenome, :email, :telefone, :celular,
                                      :genero, :matricula, :data_de_nascimento, :cr,
                                      :lattes, :role_ids,
                                      identidade_attributes: [:id, :asset, :_destroy],
                                      cpf_attributes: [:id, :numero, :asset, :_destroy],
                                      produtividade_attributes: [:id, :asset, :_destroy],
                                      plano_de_trabalho_attributes: [:id, :asset, :_destroy],
                                      curriculo_attributes: [:id, :asset, :_destroy])
    end

    def set_usuario
      @usuario = Usuario.find(params[:id])
    end
  end
end
