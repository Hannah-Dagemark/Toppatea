require_relative 'lib/request'

request_string = File.read('spec/example_requests/get-index.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params

request_string = File.read('spec/example_requests/get-examples.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params

request_string = File.read('spec/example_requests/get-fruits-with-filter.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params

request_string = File.read('spec/example_requests/post-login.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params