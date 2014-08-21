require 'spec_helper'

describe TopicsController do
 let(:user) { FactoryGirl.create(:user) }

  context "standard users" do
    before do 
	sign_in(user)
    end

   if  "cannot access the new action" do
    get :new

    expect(response).to redirect_to('/')
    expect(flash[:alert]).to eql("You must be an admin to do that.")
  end
 end
end
