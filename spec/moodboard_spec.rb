require "spec_helper"

describe Moodboard do
	before :each do
		@moodboard = Moodboard.new
	end

	describe "#new" do
			it "returns a new moodboard object" do
				@moodboard.should_not be_nil
			end
			it "returns a project_id attribute" do
				@moodboard.should respond_to(:project_id)
			end
			it "should not have an ID" do
	      @moodboard.id.should be_nil
	    end
		end
	end


	describe "#create" do
		before do
			@moodboard = Moodboard.create
		end
	end

	describe "#update" do
		before do
			@moodboard = Moodboard.update
		end
	end

	describe "#show" do
		before do
			@moodboard = Moodboard.show
		end
	end

	describe "#edit" do
		before do
			@moodboard = Moodboard.edit
		end
	end

	describe "#destroy" do
		before do
			@moodboard = Moodboard.destroy
		end
	end

