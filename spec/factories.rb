FactoryGirl.define do
	factory :log do
		ip "192.168.0.199"
		message "This is test message for factory girl:@123\\/*345"
	end
end