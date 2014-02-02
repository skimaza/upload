require 'spec_helper'

describe Log do

  before do
  	@log = Log.new(ip: "192.168.0.100", message: "Message in rspec")
  end

  subject { @log }

  it { should respond_to(:ip) }
  it { should respond_to(:message) }

  it { should be_valid }

  describe "when ip is not present" do
  	before { @log.ip = " " }
  	it { should_not be_valid }
  end

  describe "when message is not present" do
  	before { @log.message = " " }
  	it { should_not be_valid }
  end

  describe "when ip is too long" do
  	before { @log.ip = "1" * 101 }
  	it { should_not be_valid }
  end

  describe "when message is too long" do
  	before { @log.message = "a" * 201 }
  	it { should_not be_valid }
  end
end
