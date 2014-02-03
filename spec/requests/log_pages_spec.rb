require 'spec_helper'

describe "LogPages" do

	subject { page }

  describe "GET /log_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get logs_path
      response.status.should be(200)
    end
  end

  describe "show page" do
  	let(:log) { FactoryGirl.create(:log) }
  	before { visit log_path(log) }

  	it { should have_content(log.ip) }
  	it { should have_content(log.message) }
  end
end
