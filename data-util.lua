local util = {}

-- 从BZ-UTIL中复制的函数
-- Add a given quantity of product to a given recipe. 
-- Only works for recipes with multiple products
function util.add_product(recipe_name, product, options)
    if not should_force(options) and bypass(recipe_name) then
        return
    end
    if data.raw.recipe[recipe_name] and
        (data.raw.item[product[1]] or data.raw.item[product.name] or data.raw.fluid[product[1]] or
            data.raw.fluid[product.name]) then
        add_product(data.raw.recipe[recipe_name], product)
        add_product(data.raw.recipe[recipe_name].normal, product)
        add_product(data.raw.recipe[recipe_name].expensive, product)
    end
end

function add_product(recipe, product)
    if recipe ~= nil then
        if (product[1] and data.raw.item[product[1]]) or (product.name and data.raw[product.type][product.name]) then
            if not recipe.normal then
                if recipe.results == nil then
                    recipe.results = {{recipe.result, recipe.result_count and recipe.result_count or 1}}
                end
                recipe.result = nil
                recipe.result_count = nil
                table.insert(recipe.results, product)
            end
        end
    end
end

function util.get_setting(name)
    setting_name = "se-super-core-" .. name
    if settings.startup[setting_name] == nil then
        return 0
    end
    return settings.startup[setting_name].value
end

return util
