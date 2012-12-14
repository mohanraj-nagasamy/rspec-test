#array_spec.rb

require "spec_helper"

describe "testing Ruby Array" do
	it "should include? with single arg" do
		arr1 = (0..9).to_a
		arr1.should include(5)
	end

	it "should include? with var-args" do
		arr1 = (0..9).to_a
		arr1.should include(5,6,7)
	end

end