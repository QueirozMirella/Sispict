# frozen_string_literal: true

class EditalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index
    @usuario.has_role? :aluno
  end

  def new?
    @usuario.has_role? :assessor
  end

  def create?
    @usuario.has_role? :assessor
  end

  def show?
    @usuario.has_role :aluno
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
