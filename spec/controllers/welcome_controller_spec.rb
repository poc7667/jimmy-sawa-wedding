require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET reply" do
    it "returns http success" do
      get :reply
      expect(response).to be_success
    end
  end

end
