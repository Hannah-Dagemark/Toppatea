require_relative 'spec_helper'
require_relative '../lib/Request'

describe 'Request' do

    describe 'Simple get-request' do

        it 'parses the http verb' do
            @request = Request.new(File.read('./spec/example_requests/get-index.request.txt'))
            _(@request.method).must_equal "GET"
        end

        it 'parses the resource' do
            @request = Request.new(File.read('./spec/example_requests/get-index.request.txt'))
            _(@request.resource).must_equal "/"
        end

    
    end

    describe 'get-requests with url params' do

    end

end