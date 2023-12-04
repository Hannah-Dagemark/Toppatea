class Route
    attr_reader :routes
    def initialize()
        @routes = {}
    end

    def add_route(input)
        @routes.merge!(input)
        p "added successfully, @routes are: #{@routes}"
    end

    def match_route(input)
        resource = input.resource
        if @routes[resource]
            return @routes[resource]
        else
            p "failed to find: #{resource} route"
        end
    end

end