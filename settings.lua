local resources = require("resources")

for _, resource in pairs(resources) do
    data:extend({
        {
            type = "int-setting",
            name = "se-super-core-" .. resource.name,
            setting_type = "startup",
            default_value = resource.default_value,
            minimum_value = resource.minimum_value,
            order = resource.order
        }
    })
end