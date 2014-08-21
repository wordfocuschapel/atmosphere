require 'spec_helper'

describe DemopagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'legal'" do
    it "returns http success" do
      get 'legal'
      response.should be_success
    end
  end

  describe "GET 'ministries'" do
    it "returns http success" do
      get 'ministries'
      response.should be_success
    end
  end

  describe "GET 'events'" do
    it "returns http success" do
      get 'events'
      response.should be_success
    end
  end

  describe "GET 'resources'" do
    it "returns http success" do
      get 'resources'
      response.should be_success
    end
  end

  describe "GET 'donate'" do
    it "returns http success" do
      get 'donate'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'live-stream'" do
    it "returns http success" do
      get 'live-stream'
      response.should be_success
    end
  end

  describe "GET 'overview'" do
    it "returns http success" do
      get 'overview'
      response.should be_success
    end
  end

end
