data:extend({
    {
        type = "item-subgroup",
        name = "upgrade-machines",
        group = "logistics",
        order = "z",
    }
})
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "burner-to-electric-inserter",
        enabled = true,
        energy_required = 0.5,
        ingredients =
        {
            { type = "item", name = "electronic-circuit", amount = 1 },
            { type = "item", name = "burner-inserter", amount = 1 },
        },
        results = {
            { type = "item", name = "inserter", amount = 1 }
        }
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "burner-to-electric-drill",
        enabled = true,
        expensive = true,
        ingredients = {
            { type = "item", name = "burner-mining-drill", amount = 1 },
            { type = "item", name = "iron-gear-wheel", amount = 2 },
            { type = "item", name = "iron-plate", amount = 7 },
            { type = "item", name = "electronic-circuit", amount = 3 }
        },
        results = {
            {
                type = "item",
                name = "electric-mining-drill",
                amount = 1
            },
            {
                type = "item",
                name = "stone-furnace",
                amount = 1
            },
        },
        main_product = "electric-mining-drill",
        energy_required = 2,
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "stone-to-steel-furnace",
        ingredients = {
            { type = "item", name = "steel-plate", amount = 6 },
            { type = "item", name = "stone-brick", amount = 8 },
            { type = "item", name = "stone-furnace", amount = 1 }
        },
        results = {
            { type = "item", name = "steel-furnace", amount = 1 }
        },
        energy_required = 3,
        enabled = false
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "steel-to-electric-furnace",
        ingredients = {
            { type = "item", name = "steel-furnace", amount = 1 },
            { type = "item", name = "steel-plate", amount = 4 },
            { type = "item", name = "advanced-circuit", amount = 5 }
        },
        results = {
            { type = "item", name = "electric-furnace", amount = 1 }
        },
        energy_required = 5,
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "pistol-to-submachine",
        ingredients = {
            { type = "item", name = "pistol", amount = 1 },
            { type = "item", name = "iron-plate", amount = 5 },
            { type = "item", name = "iron-gear-wheel", amount = 10 }
        },
        results = { 
            { type = "item", name = "submachine-gun", amount = 1 }
        },
        energy_required = 10,
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "pistol-to-shotgun",
        ingredients = {
            { type = "item", name = "pistol", amount = 1 },
            { type = "item", name = "iron-plate", amount = 10 },
            { type = "item", name = "copper-plate", amount = 5 },
            { type = "item", name = "iron-gear-wheel", amount = 5 },
            { type = "item", name = "wood", amount = 5 }

        },
        results = {
            { type = "item", name = "shotgun", amount = 1 }
        },
        energy_required = 10,
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "shotgun-to-combat-shotgun",
        ingredients = {
            { type = "item", name = "shotgun", amount = 1 },
            { type = "item", name = "steel-plate", amount = 14 },
        },
        results = {
            { type = "item", name = "combat-shotgun", amount = 1 }
        },
        energy_required = 10,
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "light-to-heavy-armor",
        ingredients = {
            { type = "item", name = "light-armor", amount = 1 },
            { type = "item", name = "copper-plate", amount = 100 },
            { type = "item", name = "steel-plate", amount = 50 }
        },
        results = {
            { type = "item", name = "heavy-armor", amount = 1 },
            { type = "item", name = "iron-plate", amount = 40 },
        },
        energy_required = 8

    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "heavy-to-modular-armor",
        ingredients = {
            { type = "item", name = "heavy-armor", amount = 1 },
            { type = "item", name = "advanced-circuit", amount = 30 },
        },
        results = {
            { type = "item", name = "modular-armor", amount = 1 },
            { type = "item", name = "copper-plate", amount = 100 },
        },
        energy_required = 15
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "modular-to-power-armor",
        ingredients = {
            { type = "item", name = "modular-armor",        amount = 1 },
            { type = "item", name = "electric-engine-unit", amount = 20 },
            { type = "item", name = "processing-unit",      amount = 25 },
            { type = "item", name = "electronic-circuit",   amount = 300 },
        },
        results = {
            { type = "item", name = "power-armor", amount = 1 },
            { type = "item", name = "steel-plate", amount = 10 }
        },
        energy_required = 20
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "power-to-power-armor-mk2",
        ingredients = {
            { type = "item", name = "power-armor", amount = 1 },
            { type = "item", name = "efficiency-module-2", amount = 5 },
            { type = "item", name = "speed-module-2", amount = 5 }
        },
        results = {
            { type = "item", name = "power-armor-mk2", amount = 1 },
            { type = "item", name = "electric-engine-unit", amount = 20 },
        },
        energy_required = 25
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "light-to-heavy-armor",
        ingredients = {
            { type = "item", name = "light-armor", amount = 1 },
            { type = "item", name = "copper-plate", amount = 100 },
            { type = "item", name = "steel-plate", amount = 50 }
        },
        results = {
            { type = "item", name = "heavy-armor", amount = 1 },
            { type = "item", name = "iron-plate", amount = 40 },
        },
        energy_required = 8
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "heavy-to-modular-armor",
        ingredients = {
            { type = "item", name = "heavy-armor", amount = 1 },
            { type = "item", name = "advanced-circuit", amount = 30 },
        },
        results = {
            { type = "item", name = "modular-armor", amount = 1 },
            { type = "item", name = "copper-plate", amount = 100 },
        },
        energy_required = 15
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "boiler-to-heat-exchanger",
        ingredients = {
            { type = "item", name = "boiler", amount = 2 },
            { type = "item", name = "pipe", amount = 2 },
            { type = "item", name = "copper-plate", amount = 100 },
            { type = "item", name = "steel-plate", amount = 10 }

        },
        results = {
            { type = "item", name = "heat-exchanger", amount = 1 },
            { type = "item", name = "stone-furnace", amount = 2 },
        },
        icon_size = 64,
        energy_required = 3
    }
)
Jelmergu:addRecipe(
    {
        type = "recipe",
        name = "steam-engine-to-steam-turbine",
        ingredients = {
            { type = "item", name = "steam-engine", amount = 3 },
            { type = "item", name = "pipe", amount = 5 },
            { type = "item", name = "copper-plate", amount = 50 },
            { type = "item", name = "iron-gear-wheel", amount = 11 }

        },
        icon_size = 64,
        results = {
            { type = "item", name = "steam-turbine", amount = 1 }
        },
        energy_required = 3
    }
)
