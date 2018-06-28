# frozen_string_literal: true

require "rails_helper"

RSpec.describe Backoffice::ProjetosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/backoffice/editais/1/projetos").to route_to("backoffice/projetos#index", edital_id: '1')
    end

    it "routes to #new" do
      expect(:get => "/backoffice/editais/1/projetos/new").to route_to("backoffice/projetos#new", edital_id: '1')
    end

    it "routes to #show" do
      expect(:get => "/backoffice/editais/1/projetos/1").to route_to("backoffice/projetos#show", edital_id: '1', :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/backoffice/editais/1/projetos/1/edit").to route_to("backoffice/projetos#edit", edital_id: '1', :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/backoffice/editais/1/projetos").to route_to("backoffice/projetos#create", edital_id: '1')
    end

    it "routes to #update via PUT" do
      expect(:put => "/backoffice/editais/1/projetos/1").to route_to("backoffice/projetos#update", edital_id: '1', id: '1')
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/backoffice/editais/1/projetos/1").to route_to("backoffice/projetos#update", edital_id: '1', id: '1')
    end

    it "routes to #destroy" do
      expect(:delete => "/backoffice/editais/1/projetos/1").to route_to("backoffice/projetos#destroy", edital_id: '1', id: '1')
    end

  end
end
