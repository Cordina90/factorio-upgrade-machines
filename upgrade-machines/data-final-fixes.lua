if data.raw.recipe["basic-circuit-board"] and data.raw.recipe["burner-to-electric-inserter"] then
    data.raw.recipe["burner-to-electric-inserter"].ingredients = {
        { "basic-circuit-board", 1 },
        { "burner-inserter", 1 }
    }
end
if data.raw.recipe["basic-circuit-board"] and data.raw.recipe["burner-to-electric-drill"] then
    data.raw.recipe["burner-to-electric-drill"].normal.ingredients = {
        { "burner-mining-drill", 1 },
        { "iron-gear-wheel", 2 },
        { "iron-plate", 7 },
        { "basic-circuit-board", 3},
    }
end
if data.raw.recipe["basic-circuit-board"] and data.raw.recipe["burner-assembling-to-assembling-machine-1"] then
    data.raw.recipe["burner-assembling-to-assembling-machine-1"].ingredients = {
        { "burner-assembling-machine", 1 },
        { "basic-circuit-board", 3 },
    }
end
