resources = {}
if mods["space-exploration"] then
    se_mod_prefix = "se-"  
    -- 火成岩
    table.insert(resources, {
        name = se_mod_prefix .. "vulcanite", 
        default_value = 1,
        minimum_value = 0,
        order = "se"
    })
    -- 铍矿石
    table.insert(resources, {
        name = se_mod_prefix .. "beryllium-ore", 
        default_value = 1,
        minimum_value = 0,
        order = "se"
    })
    -- 铱矿石
    table.insert(resources, {
        name = se_mod_prefix .. "iridium-ore", 
        default_value = 1,
        minimum_value = 0,
        order = "se"
    })
    -- 钬矿石
    table.insert(resources, {
        name = se_mod_prefix .. "holmium-ore", 
        default_value = 1,
        minimum_value = 0,
        order = "se"
    })
    -- 维生质
    table.insert(resources, {
        name = se_mod_prefix .. "vitamelange", 
        default_value = 1,
        minimum_value = 0,
        order = "se"
    })
    -- 冰晶石
    table.insert(resources, {
        name = se_mod_prefix .. "cryonite", 
        default_value = 1,
        minimum_value = 0,
        order = "se"
    })
    -- 水冰
    table.insert(resources, {
        name = se_mod_prefix .. "water-ice", 
        default_value = 0,
        minimum_value = 0,
        order = "se"
    })
    -- 甲烷冰
    table.insert(resources, {
        name = se_mod_prefix .. "methane-ice", 
        default_value = 0,
        minimum_value = 0,
        order = "se"
    })
    -- 寂介素
    table.insert(resources, {
        name = se_mod_prefix .. "naquium-ore", 
        default_value = 0,
        minimum_value = 0,
        order = "se"
    })
end

if mods["Krastorio2"] then
    -- 原始紫晶
    table.insert(resources, {
        name = "raw-imersite", 
        default_value = 1,
        minimum_value = 0,
        order = "kr"
    })
end

return resources