data:extend({
    {
        type = "item-subgroup",
        name = "upgrade-machines",
        group = "logistics",
        order = "z",
    }
})

Jelmergu:addRecipe({
    name = "burner-to-electric-drill",
    enabled = true,
    expensive = true,
    ingredients = {
        { "burner-mining-drill", 1 },
        { "iron-gear-wheel", 2 },
        { "iron-plate", 7 },
        { "electronic-circuit", 3 }
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
    energy_required = 1,
})

Jelmergu:addRecipe(
    {
        name = "burner-to-electric-inserter",
        expensive = false,
        ingredients = {
            { "burner-inserter", 1 },
            { "electronic-circuit", 1 }
        },
        result = "inserter",
        energy_required = 1,
        enabled = true
    }
)

Jelmergu:addRecipe(
    {
        name = "stone-to-steel-furnace",
        expensive = false,
        ingredients = {
            { "stone-furnace", 1 },
            { "steel-plate", 6 },
            { "stone-brick", 9 }
        },
        result = "steel-furnace",
        energy_required = 3,
    }
)

Jelmergu:addRecipe(
    {
        name = "steel-to-electric-furnace",
        expensive = false,
        ingredients = {
            { "steel-furnace", 1 },
            { "steel-plate", 4 },
            { "advanced-circuit", 5 }
        },
        result = "electric-furnace",
        energy_required = 5,
    }
)

Jelmergu:addRecipe(
    {
        name = "pistol-to-submachine",
        ingredients = {
            { "pistol", 1},
            { "iron-plate", 5},
            { "iron-gear-wheel", 10}
        },
        result = "submachine-gun",
        energy_required = 10,
    }
)

Jelmergu:addRecipe(
    {
        name = "pistol-to-shotgun",
        ingredients = {
            { "pistol", 1},
            { "iron-plate", 10},
            { "copper-plate", 5},
            { "iron-gear-wheel", 5},
            { "wood", 5}

        },
        result = "shotgun",
        energy_required = 10,
    }
)

Jelmergu:addRecipe(
    {
        name = "pistol-to-combat-shotgun",
        ingredients = {
            { "pistol", 1},
            { "iron-plate", 5},
            { "copper-plate", 5},
            { "steel-plate", 15},
            { "wood", 10},
        },
        result = "combat-shotgun",
        energy_required = 10,
    }
)

