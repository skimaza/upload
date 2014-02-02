require 'spec_helper'

describe "logs/index" do
  before(:each) do
    assign(:logs, [
      stub_model(Log,
        :ip => "Ip",
        :message => "Message"
      ),
      stub_model(Log,
        :ip => "Ip",
        :message => "Message"
      )
    ])
  end

  it "renders a list of logs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
