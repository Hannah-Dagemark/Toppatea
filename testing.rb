require_relative 'main'

request_string = File.read('testcases/get-index.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params

request_string = File.read('testcases/get-examples.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params

request_string = File.read('testcases/get-fruits-with-filter.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params

request_string = File.read('testcases/post-login.request.txt')

request = Request.new(request_string)

p request.method 
p request.resource 
p request.version
p request.headers
p request.params