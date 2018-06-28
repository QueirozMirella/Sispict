# frozen_string_literal: true

module InscricoesHelper
  def edital_aberto?(termino)
    Date.today <= termino
  end
end
