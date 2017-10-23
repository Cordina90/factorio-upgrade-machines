
data:extend({
    {
        type = "recipe-subgroup",
        name = "upgrade-machines"
    },
    {
        type = "recipe",
        name = "stone-to-steel-furnace",
        order = "b[stone-furnace]",
        icon = "__upgrade-machines__/graphics/icons/stone-to-steel-furnace.png",
        subgroup = "upgrade-machines",
        ingredients = {
            { "steel-plate", 6 },
            { "stone-furnace", 1 },
            { "stone-brick", 9 }
        },
        result = "steel-furnace",
        energy_required = 3,
        enabled = false
    },
    {
        type = "recipe",
        name = "steel-to-electric-furnace",
        icon = "__upgrade-machines__/graphics/icons/steel-to-electric-furnace.png",
        order = "c[steel-furnace]",
        subgroup = "upgrade-machines",
        ingredients = {
            { "steel-furnace", 1 },
            { "steel-plate", 4 },
            { "advanced-circuit", 5 }
        },
        result = "electric-furnace",
        energy_required = 5,
        enabled = false
    },
    {
        type = "recipe",
        name = "burner-to-electric-inserter",
        order = "c[inserter]",
        icon = "__upgrade-machines__/graphics/icons/burner-to-electric-inserter.png",
        subgroup = "upgrade-machines",
        ingredients = {
            { "electronic-circuit", 1 },
            { "burner-inserter", 1 }
        },
        result = "inserter",
        energy_required = 1,
        enabled = true
    },
    {
        type = "recipe",
        name = "burner-to-electric-drill",
        order = "b[electric-mining-drill]",
        icon = "__upgrade-machines__/graphics/icons/burner-to-electric-drill.png",
        subgroup = "upgrade-machines",
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
    },
})