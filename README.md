# Rspec with guard without rails dependency

> ## one liner about rspec and guard
> Rspec - RSpec is testing tool for the Ruby programming language. It is designed to make Test-Driven Development a productive and enjoyable experience. <br/>
> More @ http://rspec.info/

> Guard - Guard is a command line tool to easily handle events on file system modifications. So you don't have to run the test every time you change the files. Guard keeps you focus on the tests and text editor or IDE. <br/>
> More @ https://github.com/guard/guard/blob/master/README.md


## The simple way

### Step:1 - Clone the project 


```ruby
$git clone git://github.com/mohanraj-nagasamy/rspec-test.git
```

### Step:2 - Run the following commands

```ruby
$cd rspec-test
$ls -l
```

> lib - is where your source goes. <br/>
> spec - is where your tests goes (RSpec files)


### Step:3 - Install rspec

Now install the rspec gem if you haven't installed yet. Try ***rspec -v*** to test it.

```ruby
$gem install rspec
```

### Step:4 - Install guard

Now install the guard gem if you haven't installed yet. Try ***guard -v*** to test it.

```ruby
$gem install guard
```

### Step:5 - Run the guard

```ruby
$guard -i -n f -c
```

It will watch for the file changes and runs the test for you. You don't have to run the tests every time when you change the files (including tests and the file you are testing).

### Step:6 - Open the code in some editor

```ruby
$subl . #Sublime in my case
```

Stay focus on the editor and keep writing tests.

### Step:7 - Have fun

> Remember:<br/>
> lib - is where your source goes. <br/>
> spec - is where your tests goes (RSpec files).  <br/>
> And the movie memento - TDD is kind of that exp. 


## The manual way

> Some people want to do it by manually on their own. So here are the steps.  <br/>
> But you have to modify the following files or copy from - https://github.com/mohanraj-nagasamy/rspec-test.git


### Step:1 - create dirs

```ruby
$mkdir rspec-test/{lib,spec}
$cd rspec-test
```

The folder structure will look like-

```ruby
$rspec-test
	-lib
	-spec
```

> lib - is where your source goes. <br/>
> spec - is where your tests goes (RSpec files)

### Step:2 - Install rspec gem
now install the rspec gem if you haven't installed yet. Try *rspec -v* to test it.

```ruby
$gem install rspec
```

```ruby
$rspec --init
```

It will create .rspec file and spec_helper.rb.

### Step:2 - Create test first

Let's say you want to test User spec. Create user_spec.rb inside spec dir 

```ruby
$subl spec/user_spec.rb #open file
```

```ruby
#spec/user_spec.rb 
require 'user'

describe User do
	it "should be equal" do
		user = User.new
		user.name = "test-1"
		user.name.should be == "test-1"
	end
end
```

### Step:2 - Create something to fail/pass the test

create user.rb inside lib dir

```ruby
$subl lib/user.rb 
```

```ruby
#lib/user.rb 
user.rb
class User
	attr_accessor :name
end
```

### Step:2 - Run tests with rspec

```ruby
$rspec spec/user_spec.rb -f d -c
```

> You should be able to see the test running successfully.


### Step:2 - Let's automate with guard.

Install the guard gem if you haven't installed yet. Try ***guard -v*** to test it.

```ruby
$gem install guard
```
```ruby
guard init # This is will create Guardfile
```

### Step:5 - Run the guard

```ruby
$guard -i -n f -c
```

It will watch for the file changes and runs the test for you. You don't have to run the tests every time when you change the files (including tests and the file you are testing).

### Step:6 - Open the code in some editor

```ruby
$subl .
```

Stay focus on the editor and keep writing tests.

### Step:7 - Have fun

> Remember:<br/>
> lib - is where your source goes. <br/>
> spec - is where your tests goes (RSpec files)
> And the movie memento - TDD is kind of that exp.


# Links
[http://stackoverflow.com/questions/201385/getting-started-with-rspec-looking-for-tutorials]
[https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/include-matcher]
