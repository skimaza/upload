require 'spec_helper'

describe "logs/edit" do
  before(:each) do
    @log = assign(:log, stub_model(Log,
      :ip => "MyString",
      :message => "MyString"
    ))
  end

  it "renders the edit log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", log_path(@log), "post" do
      assert_select "input#log_ip[name=?]", "log[ip]"
      assert_select "input#log_message[name=?]", "log[message]"
    end
  end
end
