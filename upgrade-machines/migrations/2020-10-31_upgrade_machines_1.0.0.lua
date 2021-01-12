function enable_recipe_if_tech_exists(force, tech, recipe)
    if force.technologies[tech] ~= nil and force.recipes[recipe] ~= nil and force.technologies[tech].researched == true then
        force.recipes[recipe].enabled = false
        force.recipes[recipe].reload()
    end
end

for _, force in pairs(game.forces) do
    enable_recipe_if_tech_exists(force, "bob-steam-turbine-1", "steam-engine-to-steam-turbine")
    enable_recipe_if_tech_exists(force, "bob-heat-exchanger-1", "boiler-to-heat-exchanger")
    enable_recipe_if_tech_exists(force, "automation", "burner-assembling-to-assembling-machine-1")
end