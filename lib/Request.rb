class Request
    attr_reader :method, :resource, :version, :headers, :params

    def initialize(input)
        @input = input
        variable_definer(@input)
    end

    private 
    
    def variable_definer(input) ##Defines required class variables by splitting up the input text
        rows = input.split(/\n/)
        @method, @resource, @version = rows[0].split(' ')
        @headers, @params = {}, {}
        if rows.find_index("") != nil then
            limit = rows.find_index("")
        else
            limit = rows.length
        end
        header_constructor(rows, limit)
        if limit != rows.length
            param_constructor(rows)
        end
        if @resource.include?("?")
            resource_deconstructor
        end
    end

    def header_constructor(rows, limit)
        for row in rows[1..limit-1]
            context, information = row.split(' ')
            context = context.sub(/:/, "")
            @headers[context] = information
        end
    end

    def param_constructor(rows)
        for row in rows[rows.find_index("")+1..rows.length]
            information = row.split(/&/)
            for info in information
                context, content = info.split('=')
                @params[context] = content
            end
        end
    end
    
    def resource_deconstructor
        information = @resource.split('?')[1].split(/&/)
        for info in information
            context, content = info.split('=')
            @params[context] = content
        end
    end
end