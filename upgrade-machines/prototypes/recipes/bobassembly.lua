Jelmergu:addConditionalRecipe({ "burner-assembling-machine", "assembling-machine-1" },
        {
            name = "burner-assembling-to-assembling-machine-1",
            order = "b[burner-to-electric-drill]",
            expensive = false,
            icon_size = 64,
            ingredients = {
                { "burner-assembling-machine", 1 },
                { "electronic-circuit", 3 },
            },
            main_product = "assembling-machine-1",
            energy_required = 0.5,
        }
)

