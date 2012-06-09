d2
==

A cross-version compatible shortcut for invoking a Ruby debugger that always tries to do the right thing&trade; no matter which platform you're running under.

This gem is a trivial layer built upon the hard work of giants, and I sure wouldn't blame you if you preferred not to use it. See the alternative pattern in my [article about cross-version debugging in Ruby](http://mutelight.org/ruby-debug).

Drop `d2` into your Gemfile:

``` ruby
group :development, :test do
  gem "d2"
end
```

Make sure you're using `Bundler.require` somewhere in your project (Rails does this automatically), or include a `require 'd2'` somewhere (like in your `test_helper.rb`).

You're ready to go:

``` ruby
def requires_frequent_debugging
  risky_call rescue nil
  Singleton.manipulate_global_state
  d # drop me here!
  Model.do_business_logic
  super
end
```
