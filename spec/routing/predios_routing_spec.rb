# frozen_string_literal: true

require "rails_helper"

RSpec.describe Backoffice::PrediosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/backoffice/predios").to route_to("backoffice/predios#index")
    end

    it "routes to #new" do
      expect(:get => "/backoffice/predios/new").to route_to("backoffice/predios#new")
    end

    it "routes to #show" do
      expect(:get => "/backoffice/predios/1").to route_to("backoffice/predios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/backoffice/predios/1/edit").to route_to("backoffice/predios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "backoffice/predios").to route_to("backoffice/predios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/backoffice/predios/1").to route_to("backoffice/predios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/backoffice/predios/1").to route_to("backoffice/predios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/backoffice/predios/1").to route_to("backoffice/predios#destroy", :id => "1")
    end

  end
end
