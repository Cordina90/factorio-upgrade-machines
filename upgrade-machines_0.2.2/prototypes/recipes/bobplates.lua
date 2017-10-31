function addConditionalRecipe(conditionalItems, recipe)

    local execute = true
    for index, cItem in next, conditionalItems do
        if not data.raw.item[cItem] then
            execute = false
            break
        end
    end

    recipe.subgroup = "upgrade-machines"
    recipe.type = "recipe"
    recipe.main_product = recipe.main_product and recipe.main_product or ""

    if not recipe.results then
        recipe.result = conditionalItems[2]
    else
        table.insert(recipe.results, { name = conditionalItems[1], type = "item", amount = "1" })
    end

    recipe.icon = "__upgrade-machines__/graphics/icons/" .. recipe.name .. ".png"

    data:extend({ recipe })
end

addConditionalRecipe({ "mixing-furnace", "mixing-steel-furnace" },
    {
        name = "stone-mixing-to-steel-furnace",
        order = "c[stone-to-steel-furnace]",
        ingredients = {
            { "mixing-furnace", 1 },
            { "steel-plate", 6 },
            { "stone-brick", 5 }
        },
        energy_required = 3,
        enabled = false
    })

addConditionalRecipe({ "mixing-steel-furnace", "electric-mixing-furnace" },
    {
        name = "steel-mixing-to-electric-furnace",
        order = "d[steel-to-electric-furnace]",
        ingredients = {
            { "mixing-steel-furnace", 1 },
            { "steel-plate", 9 },
            { "advanced-circuit", 5 }
        },
        energy_required = 10,
        enabled = false
    })

addConditionalRecipe({ "chemical-boiler", "chemical-steel-furnace" },
    {
        name = "stone-chemical-to-steel-furnace",
        order = "c[stone-mixing-to-steel-furnace]",
        ingredients = {
            { "chemical-boiler", 1 },
            { "steel-plate", 6 },
            { "stone-brick", 5 },
            { "pipe", 3 }
        },
        energy_required = 3,
        enabled = false
    })

addConditionalRecipe({ "chemical-steel-furnace", "chemical-furnace" },
    {
        name = "steel-chemical-to-electric-furnace",
        order = "d[steel-mixing-to-electric-furnace]",
        ingredients = {
            { "chemical-steel-furnace", 1 },
            { "steel-plate", 9 },
            { "advanced-circuit", 5 },
        },
        results = {
            {
                type = "item",
                name = "pipe",
                amount = 5,
            }
        },
        main_product = "chemical-steel-furnace",
        energy_required = 5,
        enabled = false
    })

