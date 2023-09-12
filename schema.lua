local typedefs = require "kong.db.schema.typedefs"

return {
    name = "custom-auth",
    fields = {
        { protocols = typedefs.protocols_http },
        { config = {
            type = "record",
            fields = {
                { validation_endpoint = typedefs.url({ required = true }) },
                { ssl_verify = { type = "boolean", default = false, required = false } },
                { token_header = { type = "string", default = "Authorization", required = false } },
                { appid_header = { type = "string", default = "App-ID", required = false } },
                { userid_header = { type = "string", default = "User-ID", required = false } },
            }
        }
        }
    }
}