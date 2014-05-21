require "spec_helper"

describe Image do
	before :each do
		@image = Image.new
	end

	describe "#new" do
		it "returns a new image object" do
			@image.should_not be_nil
		end
		it "returns a image attribute" do
			@image.should respond_to(:image)
		end
		it "returns a title attribute" do
			@image.should respond_to(:title)
		end
		it "returns a notes attribute" do
			@image.should respond_to(:notes)
		end
		it "returns a source attribute" do
			@image.should respond_to(:source)
		end
		it "returns a remote_source_url attribute" do
			@image.should respond_to(:remote_source_url)
		end
		it "returns a user_id attribute" do
			@image.should respond_to(:user_id)
		end
	end
end	


	describe "#create" do
		before do
			@image = Image.create
		end
	end

	describe "#update" do
		before do
			@image = Image.update
		end
	end

	describe "#show" do
		before do
			@image = Image.show
		end
	end

	describe "#edit" do
		before do
			@image = Image.edit
		end
	end

	describe "#destroy" do
		before do
			@image = Image.destroy
		end
	end