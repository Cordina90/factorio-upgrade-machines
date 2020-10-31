for _, force in pairs(game.forces) do
    if force.technologies["bob-steam-turbine-1"].researched == true then
        force.recipes["steam-engine-to-steam-turbine"].enabled = false
        force.recipes["steam-engine-to-steam-turbine"].reload()
    end
    if force.technologies["bob-heat-exchanger-1"].researched == true then
        force.recipes["boiler-to-heat-exchanger"].enabled = false
        force.recipes["boiler-to-heat-exchanger"].reload()
    end
    if force.technologies["automation"].researched == true then
        force.recipes["burner-assembling-to-assembling-machine-1"].enabled = true
        force.recipes["burner-assembling-to-assembling-machine-1"].reload()
    end
end