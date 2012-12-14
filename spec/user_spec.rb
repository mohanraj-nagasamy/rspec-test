require "spec_helper"
require 'user'

describe User do
	it "name should be equal" do
		user = User.new
		user.name = "test-1"
		user.name.should be == "test-1"
	end
end
