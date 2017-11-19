data:extend({
    {
        type = "item-subgroup",
        name = "upgrade-machines",
        group = "logistics",
        order = "z",
    }
})

addRecipe(
    {
        name = "burner-to-electric-drill",
        order = "a",
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
        energy_required = 1,
        enabled = true
    }
)

addRecipe(
    {
        name = "burner-to-electric-inserter",
        order = "b",
        ingredients = {
            { "electronic-circuit", 1 },
            { "burner-inserter", 1 }
        },
        result = "inserter",
        energy_required = 1,
        enabled = true
    }
)

addRecipe(
    {
        name = "stone-to-steel-furnace",
        order = "c",
        ingredients = {
            { "steel-plate", 6 },
            { "stone-furnace", 1 },
            { "stone-brick", 9 }
        },
        result = "steel-furnace",
        energy_required = 3,
    }
)

addRecipe(
    {
        name = "steel-to-electric-furnace",
        order = "d",
        ingredients = {
            { "steel-furnace", 1 },
            { "steel-plate", 4 },
            { "advanced-circuit", 5 }
        },
        result = "electric-furnace",
        energy_required = 5,
    }
)

addRecipe(
    {
        name = "pistol-to-submachine",
        order = "d",
        ingredients = {
            { "iron-plate", 5},
            { "iron-gear-wheel", 10},
            { "pistol", 1},
        },
        result = "submachine-gun",
        energy_required = 10,
        enabled = true
    }
)

addRecipe(
    {
        name = "pistol-to-shotgun",
        order = "d",
        ingredients = {
            { "iron-plate", 10},
            { "copper-plate", 5},
            { "iron-gear-wheel", 5},
            { "wood", 5},
            { "pistol", 1},
        },
        result = "shotgun",
        energy_required = 10,
        enabled = true
    }
)

addRecipe(
    {
        name = "pistol-to-combat-shotgun",
        order = "d",
        ingredients = {
            { "iron-plate", 5},
            { "copper-plate", 5},
            { "steel-plate", 15},
            { "wood", 10},
            { "pistol", 1},
        },
        result = "combat-shotgun",
        energy_required = 10,
    }
)
