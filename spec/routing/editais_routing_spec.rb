# frozen_string_literal: true

require "rails_helper"

RSpec.describe Backoffice::EditaisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/backoffice/editais").to route_to("backoffice/editais#index")
    end

    it "routes to #new" do
      expect(get: "/backoffice/editais/new").to route_to("backoffice/editais#new")
    end

    it "routes to #show" do
      expect(get: "/backoffice/editais/1").to route_to("backoffice/editais#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/backoffice/editais/1/edit").to route_to("backoffice/editais#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/backoffice/editais").to route_to("backoffice/editais#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/backoffice/editais/1").to route_to("backoffice/editais#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/backoffice/editais/1").to route_to("backoffice/editais#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/backoffice/editais/1").to route_to("backoffice/editais#destroy", id: "1")
    end
  end
end
