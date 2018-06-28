# frozen_string_literal: true

require "rails_helper"

RSpec.describe Backoffice::InscricoesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/backoffice/editais/1/inscricoes").to route_to("backoffice/inscricoes#index", edital_id: '1')
    end

    it "routes to #new" do
      expect(get: "/backoffice/editais/1/inscricoes/new").to route_to("backoffice/inscricoes#new", edital_id: '1')
    end

    it "routes to #show" do
      expect(get: "/backoffice/editais/1/inscricoes/1").to route_to("backoffice/inscricoes#show", edital_id: '1', id: "1")
    end

    it "routes to #edit" do
      expect(get: "/backoffice/editais/1/inscricoes/1/edit").to route_to("backoffice/inscricoes#edit", edital_id: '1', id: "1")
    end

    it "routes to #create" do
      expect(post: "/backoffice/editais/1/inscricoes").to route_to("backoffice/inscricoes#create", edital_id: '1')
    end

    it "routes to #update via PUT" do
      expect(put: "/backoffice/editais/1/inscricoes/1").to route_to("backoffice/inscricoes#update", edital_id: '1', id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/backoffice/editais/1/inscricoes/1").to route_to("backoffice/inscricoes#update", edital_id: '1', id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/backoffice/editais/1/inscricoes/1").to route_to("backoffice/inscricoes#destroy", edital_id: '1', id: "1")
    end
  end
end
