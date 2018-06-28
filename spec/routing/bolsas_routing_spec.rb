# frozen_string_literal: true

require "rails_helper"

RSpec.describe Backoffice::BolsasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/backoffice/bolsas").to route_to("backoffice/bolsas#index")
    end

    it "routes to #new" do
      expect(get: "/backoffice/bolsas/new").to route_to("backoffice/bolsas#new")
    end

    it "routes to #show" do
      expect(get: "/backoffice/bolsas/1").to route_to("backoffice/bolsas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/backoffice/bolsas/1/edit").to route_to("backoffice/bolsas#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/backoffice/bolsas").to route_to("backoffice/bolsas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/backoffice/bolsas/1").to route_to("backoffice/bolsas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/backoffice/bolsas/1").to route_to("backoffice/bolsas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/backoffice/bolsas/1").to route_to("backoffice/bolsas#destroy", id: "1")
    end
  end
end
