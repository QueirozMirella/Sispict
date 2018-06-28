# frozen_string_literal: true

class Role < ApplicationRecord
  has_and_belongs_to_many :usuarios, join_table: :usuarios_roles
  OPTIONS = %w[visitante aluno professor orientador avaliador coordenador assessor].freeze

  def self.availables
    OPTIONS.map(&:to_s)
  end

  belongs_to :resource,
             polymorphic: true,
             optional: true

  validates :resource_type,
            inclusion: { in: Rolify.resource_types },
            allow_nil: true

  validates :name, inclusion: { in: Role.availables }
  scopify
end
