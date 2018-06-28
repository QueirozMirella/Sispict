# frozen_string_literal: true

require 'rails_helper'

describe PredioPolicy do
  subject { described_class }

  context 'for a assessor' do
    let(:assessor) { FactoryBot.create(:usuario, :assessor) }
    let(:aluno) { FactoryBot.create(:usuario, :aluno) }
    let(:coordenador) { FactoryBot.create(:usuario, :coordenador) }
    let(:avaliador) { FactoryBot.create(:usuario, :avaliador) }
    let(:visitante) { FactoryBot.create(:usuario, :visitante) }
    let(:professor) { FactoryBot.create(:usuario, :professor) }

    permissions :new?, :edit?, :create?, :destroy? do
      it 'grants access to assessor' do
        expect(subject).to permit(assessor)
      end

      it 'denies access for a aluno' do
        expect(subject).not_to permit(aluno)
      end

      it 'denies access for a aluno' do
        expect(subject).not_to permit(coordenador)
      end

      it 'denies access for a aluno' do
        expect(subject).not_to permit(avaliador)
      end

      it 'denies access for a aluno' do
        expect(subject).not_to permit(visitante)
      end

      it 'denies access for a aluno' do
        expect(subject).not_to permit(professor)
      end
    end
  end
end
