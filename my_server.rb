class MyServer
    def call(env)
        return [200, {'Content-Type' => 'text/html'}, pretty_response ]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end
end

#this way honors the way most Rack applications are built: the server setup code
#lives in the rackup file and our application logic lives in a class that's referenced 
#by the run command in the rackup file.