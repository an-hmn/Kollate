require "spec_helper"

describe User do
	before :each do
		@user = User.new
	end

	describe "#new" do
		it "returns a new user object" do
			@user.should_not be_nil
		end
		it "returns a email attribute" do
			@user.should respond_to(:email)
		end
		it "returns a password attribute" do
			@user.should respond_to(:password)
		end
		it "returns a password_confirmation attribute" do
			@user.should respond_to(:password_confirmation)
		end
		it "returns a name attribute" do
			@user.should respond_to(:name)
		end
		it "returns a remember_me attribute" do
			@user.should respond_to(:remember_me)
		end
	end
end


	describe "#create" do
		before do
			@user = User.create
		end
	end

	describe "#update" do
		before do
			@user = User.update
		end
	end

	describe "#show" do
		before do
			@user = User.show
		end
	end

	describe "#edit" do
		before do
			@user = User.edit
		end
	end

	describe "#destroy" do
		before do
			@user = User.destroy
		end
	end
