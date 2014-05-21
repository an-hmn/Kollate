require "spec_helper"

describe Project do
	before :each do
		@project = Project.new
	end


	describe "#new" do
		it "returns a new project object" do
			@project.should_not be_nil
		end
		it "returns a title attribute" do
			@project.should respond_to(:title)
		end
		it "returns a client attribute" do
			@project.should respond_to(:client)
		end
		it "returns a brief attribute" do
			@project.should respond_to(:brief)
		end
		it "returns a sidenotes attribute" do
			@project.should respond_to(:sidenotes)
		end
		it "returns a deadline attribute" do
			@project.should respond_to(:deadline)
		end
		it "returns a user_id attribute" do
			@project.should respond_to(:user_id)
		end
	end

	describe "#create" do
		before do
			@project = Project.create(:title => "TestTwo")
		end
		it "should be valid" do
			@project.valid?.should be_true
		end
		 it "should have an ID" do
      @project.id.should_not be_nil
    end
	end


	describe "#update" do
		before do
			@project = Project.update
		end
	end

	describe "#show" do
		before do
			@project = Project.show
		end
	end

	describe "#edit" do
		before do
			@project = Project.edit
		end
	end

	describe "#destroy" do
		before do
			@project = Project.destroy
		end
	end
end


