require 'spec_helper'

describe User do
	before :each do
		@user = FactoryGirl.build(:user)
	end

	describe "works" do
		it "shoud work" do
			@user.should be_an_instance_of User
		end
	end
end