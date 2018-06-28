# frozen_string_literal: true

class LaboratorioPolicy < ApplicationPolicy
  def index?
    @usuario.has_role? :assessor
  end

  def new?
    @usuario.has_role? :assessor
  end

  def create?
    @usuario.has_role? :assessor
  end

  def show?
    @usuario.has_role? :assessor
  end

  def edit?
    @usuario.has_role? :assessor
  end

  def update?
    @usuario.has_role? :assessor
  end

  def destroy?
    @usuario.has_role? :assessor
  end
end
