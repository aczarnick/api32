local api = nil

local function init()
    if api == nil then
        require('RestApi')
            .create()
            .on_get('/info', function(jreq)
                return {
                    message = 'Hello world'
                }
            end)
    end
end

init()