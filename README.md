# Rspec with guard without rails dependency

> one liner
> Rspec - 
> guard - 


## Simple way

### Step:1 - Clone the project 


```ruby
git clone git://github.com/mohanraj-nagasamy/rspec-test.git
```

### Step:2 - Run the following commands

```ruby
$cd rspec-test
$ls -l
```

lib - is where your source goes.
spec - is where your tests goes (RSpec files)


### Step:3 - Install rspec

Now install the rspec gem if you haven't installed yet. Try *rspec -v* to test it.

$gem install rspec

### Step:4 - Install guard

Now install the guard gem if you haven't installed yet. Try *guard -v* to test it.

$gem install guard


### Step:5 - Run the guard

$guard -i -n f -c

### Step:6 - Open the code in some editor

$subl .

Stay focus on the edior and keep writing tests.

### Step:7 - Have fun

## Remember
lib - is where your source goes.
spec - is where your tests goes (RSpec files)


## Manual way

> Some people like want to do it by manuall on their own. So here are the steps.
> But you have to modify the following files or copy from 

step 1
mkdir rspec-test/{lib,spec}
cd rspec-test

it will look like-
rspec-test
	-lib
	-spec

lib - is where your source goes.
spec - is where your tests goes (RSpec files)

step 2
now install the rspec gem if you haven't installed yet. Try *rspec -v* to test it.

gem install rspec

step XXX
rspec --init

will create Guardfile.

step 3

create user.rb inside lib dir
subl lib/user.rb 

user.rb
class User
	attr_accessor :name
end

create user_spec.rb inside spec dir 
subl lib/user_spec.rb 

require 'user'

describe User do
	it "should be equal" do
		user = User.new
		user.name = "test-1"
		user.name.should be == "test-1"
	end
end

step 4
run tests with -

rspec spec/user_spec.rb -f d -c

You should be able to see the test running successfully.

Let's automate with guard.
step 5
now install the guard gem if you haven't installed yet. Try *guard -v* to test it.

gem install guard

step 6
guard init

this is will create Guardfile

guard -i -n f -c



Links
http://stackoverflow.com/questions/201385/getting-started-with-rspec-looking-for-tutorials
https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/include-matcher
