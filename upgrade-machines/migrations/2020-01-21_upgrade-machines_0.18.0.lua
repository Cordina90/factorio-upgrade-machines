for index, force in pairs(game.forces) do
    if force.technologies["nuclear-power"].researched == true then
        force.recipes["boiler-to-heat-exchanger"].enabled = true
        force.recipes["boiler-to-heat-exchanger"].reload()
        force.recipes["steam-engine-to-steam-turbine"].enabled = true
        force.recipes["steam-engine-to-steam-turbine"].reload()
    end
end
