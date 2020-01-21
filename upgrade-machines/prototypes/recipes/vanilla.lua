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
    energy_required = 2,
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
            energy_required = 0.5,
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
                { "pistol", 1 },
                { "iron-plate", 5 },
                { "iron-gear-wheel", 10 }
            },
            result = "submachine-gun",
            energy_required = 10,
        }
)

Jelmergu:addRecipe(
        {
            name = "pistol-to-shotgun",
            ingredients = {
                { "pistol", 1 },
                { "iron-plate", 10 },
                { "copper-plate", 5 },
                { "iron-gear-wheel", 5 },
                { "wood", 5 }

            },
            result = "shotgun",
            energy_required = 10,
        }
)

Jelmergu:addRecipe(
        {
            name = "pistol-to-combat-shotgun",
            ingredients = {
                { "pistol", 1 },
                { "iron-plate", 5 },
                { "copper-plate", 5 },
                { "steel-plate", 15 },
                { "wood", 10 },
            },
            result = "combat-shotgun",
            energy_required = 10,
        }
)

Jelmergu:addRecipe(
        {
            name = "light-to-heavy-armor",
            ingredients = {
                {"light-armor", 1},
                {"copper-plate", 100},
                {"steel-plate", 50}
            },
            results = {
                {"heavy-armor", 1},
                {"iron-plate", 40},
            },
            expensive = false,
            energy_required = 8

        }
)

Jelmergu:addRecipe(
        {
            name = "heavy-to-modular-armor",
            ingredients = {
                {"heavy-armor", 1},
                {"advanced-circuit", 30},
            },
            results = {
                {"modular-armor", 1},
                {"copper-plate", 100},
            },
            expensive = false,
            energy_required = 15
        }
)

Jelmergu:addRecipe(
        {
            name = "modular-to-power-armor",
            ingredients = {
                {"modular-armor", 1},
                {"electric-engine-unit", 20},
                {"processing-unit", 25},
                {"electronic-circuit", 300},
            },
            results = {
                {"power-armor", 1},
                {"steel-plate", 10}
            },
            expensive = false,
            energy_required = 20
        }
)

Jelmergu:addRecipe(
        {
            name = "power-to-power-armor-mk2",
            ingredients = {
                {"power-armor", 1},
                {"effectivity-module-3", 5},
                {"speed-module-3", 5}
            },
            results = {
                {"power-armor-mk2", 1},
                {"electric-engine-unit", 20},
            },
            expensive = false,
            energy_required = 25

        }
)

Jelmergu:addRecipe(
        {
            name = "boiler-to-heat-exchanger",
            ingredients = {
                {"boiler", 2},
                {"pipe", 2},
                {"copper-plate", 100},
                {"steel-plate", 10}

            },
            results = {
                {"heat-exchanger", 1},
                {"stone-furnace", 2},
            },
            expensive = false,
            icon_size = 64,
            energy_required = 3
        }
)

Jelmergu:addRecipe(
        {
            name = "steam-engine-to-steam-turbine",
            ingredients = {
                {"steam-engine", 3},
                {"pipe", 5},
                {"copper-plate", 50},
                {"iron-gear-wheel", 11}

            },
            icon_size = 64,
            result = "steam-turbine",
            expensive = false,
            energy_required = 3
        }
)