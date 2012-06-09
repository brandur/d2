def d2
  begin
    require "debugger"
  rescue LoadError
    require "ruby-debug"
  end
  debugger
end
