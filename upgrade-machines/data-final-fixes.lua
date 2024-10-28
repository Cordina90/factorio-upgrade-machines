if data.raw.recipe["basic-circuit-board"] and data.raw.recipe["burner-to-electric-inserter"] then
    data.raw.recipe["burner-to-electric-inserter"].ingredients = {
        { type = "item", name = "basic-circuit-board", amount = 1 },
        { type = "item", name = "burner-inserter", amount = 1 }
    }
end
if data.raw.recipe["basic-circuit-board"] and data.raw.recipe["burner-to-electric-drill"] then
    data.raw.recipe["burner-to-electric-drill"].normal.ingredients = {
        { type = "item", name = "burner-mining-drill", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 2 },
        { type = "item", name = "iron-plate", amount = 7 },
        { type = "item", name = "basic-circuit-board", amount = 3 },
    }
end
if data.raw.recipe["basic-circuit-board"] and data.raw.recipe["burner-assembling-to-assembling-machine-1"] then
    data.raw.recipe["burner-assembling-to-assembling-machine-1"].ingredients = {
        { type = "item", name = "burner-assembling-machine", amount = 1 },
        { type = "item", name = "basic-circuit-board", amount = 3 },
    }
end
