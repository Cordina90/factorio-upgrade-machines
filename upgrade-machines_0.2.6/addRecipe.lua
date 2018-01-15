function addRecipe(recipe)

    recipe.subgroup = "upgrade-machines"
    recipe.type = "recipe"
    recipe.main_product = recipe.main_product and recipe.main_product or ""
    recipe.icon = "__upgrade-machines__/graphics/icons/" .. recipe.name .. ".png"
    recipe.enabled = recipe.enabled and recipe.enabled or false
    recipe.icon_size = recipe.icon_size and recipe.icon_size or 32

    data:extend({ recipe })
end

function addConditionalRecipe(conditionalItems, recipe)

    local execute = true
    for index, cItem in next, conditionalItems do
        if not data.raw.item[cItem] then
            execute = false
            break
        end
    end

    if not recipe.results then
        recipe.result = conditionalItems[2]
    else
        table.insert(recipe.results, { name = conditionalItems[2], type = "item", amount = "1" })
    end

    addRecipe(recipe);

end
