# frozen_string_literal: true

require "rails_helper"

RSpec.describe Backoffice::UsuariosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/backoffice/usuarios").to route_to("backoffice/usuarios#index")
    end

    it "routes to #show" do
      expect(get: "/backoffice/usuarios/1").to route_to("backoffice/usuarios#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/backoffice/usuarios/1/edit").to route_to("backoffice/usuarios#edit", id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/backoffice/usuarios/1").to route_to("backoffice/usuarios#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/backoffice/usuarios/1").to route_to("backoffice/usuarios#update", id: "1")
    end
  end
end
