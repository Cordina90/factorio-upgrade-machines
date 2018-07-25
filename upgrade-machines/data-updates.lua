if data.raw.recipe["basic-circuit-board"] then
    data.raw.recipe["burner-to-electric-inserter"].ingredients = {
        { "basic-circuit-board", 1 },
        { "burner-inserter", 1 }
    }
    data.raw.recipe["burner-to-electric-drill"].ingredients = {
        { "burner-mining-drill", 1 },
        { "iron-gear-wheel", 2 },
        { "iron-plate", 7 },
        { "basic-circuit-board", 3},
    }
end

