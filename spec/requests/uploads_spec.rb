require 'spec_helper'

describe "Uploads" do
	
	subject { page }

  describe "Local upload test page" do
  	before { visit upload_path }
  	
  	it "should have the content 'File Upload'" do
  		expect(page).to have_content('File Upload')
  	end

  	it "should have the submit button" do
	  	page.should have_selector("input[type=submit][value='Upload']")
	  end

  	it "should have File Upload button" do
  		expect(page).to have_selector("textarea[placeholder='Compose new log...'][name='upload[log]']")
  	end
  end

  describe "Remote upload test" do
  	describe "with valid parameters" do
  		before { post upload_path, upload: { log: "test message" } }
  		specify { expect(response).to be_success }
  	end

  	describe "with invalid parameters" do
  		before { post upload_path }
  		specify { expect(response).to be_success }
  	end
  end
end
