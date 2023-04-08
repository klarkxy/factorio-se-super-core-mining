local util = require("data-util")
local resources = require("resources")

for _, resource in pairs(resources) do
    amount = util.get_setting(resource.name)
    log("resource name : " .. resource.name .. ", amount : " .. tostring(amount))
    if amount > 0 then
        util.add_product("se-core-fragment-omni", {
            type = "item",
            name = resource.name,
            amount = amount
        })
    end
end

