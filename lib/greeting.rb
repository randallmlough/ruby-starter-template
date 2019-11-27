def say_hello(name)
    "hello, " + name
end

def say_hello_block(name, &bloc)
    bloc.call(name)
end

