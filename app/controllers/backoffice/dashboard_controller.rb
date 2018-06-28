# frozen_string_literal: true

module Backoffice
  class DashboardController < AdminApplication
    def index
      @editais = Edital.open
    end
  end
end
