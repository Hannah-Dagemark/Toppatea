require_relative 'lib/route'
require_relative 'lib/request'

request_string = File.read('spec/example_requests/get-examples.request.txt')
route = Route.new
request = Request.new(request_string)

examples = {"/nopers" => "okidoki"}
route.add_route(examples)
p route.match_route(request)