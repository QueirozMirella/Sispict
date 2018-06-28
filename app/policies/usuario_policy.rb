# frozen_string_literal: true

class UsuarioPolicy < ApplicationPolicy
  def index?
    @usuario.has_role? :assessor
  end

  def edit?
    @usuario.has_role? :assessor
  end

  def show?
    @usuario.has_role? :assessor
  end

  def update?
    @usuario.has_role? :assessor
  end
end
