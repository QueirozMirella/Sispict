# frozen_string_literal: true

require "rails_helper"

RSpec.describe Backoffice::LaboratoriosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/backoffice/predios/1/laboratorios").to route_to("backoffice/laboratorios#index", predio_id: '1')
    end

    it "routes to #new" do
      expect(get: "/backoffice/predios/1/laboratorios/new").to route_to("backoffice/laboratorios#new", predio_id: '1')
    end

    it "routes to #show" do
      expect(get: "/backoffice/predios/1/laboratorios/1").to route_to("backoffice/laboratorios#show", id: "1", predio_id: '1')
    end

    it "routes to #edit" do
      expect(get: "/backoffice/predios/1/laboratorios/1/edit").to route_to("backoffice/laboratorios#edit", id: "1", predio_id: '1')
    end

    it "routes to #create" do
      expect(post: "/backoffice/predios/1/laboratorios").to route_to("backoffice/laboratorios#create", predio_id: '1')
    end

    it "routes to #update via PUT" do
      expect(put: "/backoffice/predios/1/laboratorios/1").to route_to("backoffice/laboratorios#update", id: "1", predio_id: '1')
    end

    it "routes to #update via PATCH" do
      expect(patch: "/backoffice/predios/1/laboratorios/1").to route_to("backoffice/laboratorios#update", id: "1", predio_id: '1')
    end

    it "routes to #destroy" do
      expect(delete: "/backoffice/predios/1/laboratorios/1").to route_to("backoffice/laboratorios#destroy", id: "1", predio_id: '1')
    end
  end
end
