Jelmergu:addConditionalRecipe({ "mixing-furnace", "mixing-steel-furnace" },
    {
        name = "stone-mixing-to-steel-furnace",
        order = "c[stone-to-steel-furnace]",
        ingredients = {
            { "mixing-furnace", 1 },
            { "steel-plate", 6 },
            { "stone-brick", 5 }
        },
        energy_required = 3,
    }
)

Jelmergu:addConditionalRecipe({ "mixing-steel-furnace", "electric-mixing-furnace" },
    {
        name = "steel-mixing-to-electric-furnace",
        order = "d[steel-to-electric-furnace]",
        ingredients = {
            { "mixing-steel-furnace", 1 },
            { "steel-plate", 9 },
            { "advanced-circuit", 5 }
        },
        energy_required = 10,
    }
)

Jelmergu:addConditionalRecipe({ "chemical-boiler", "chemical-steel-furnace" },
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
    }
)

Jelmergu:addConditionalRecipe({ "chemical-steel-furnace", "chemical-furnace" },
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
        main_product = "chemical-furnace",
        energy_required = 5,
    }
)

